<?php

namespace App\Http\Controllers;

use File;
use Carbon\Carbon;
use App\upload_settuweb;
use Illuminate\Http\Request;
use App\Models\TemporaryFile;
use App\Models\UploadSettuweb;
use Madnest\Madzipper\Madzipper;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use RealRashid\SweetAlert\Facades\Alert;

class SettuwebController extends Controller
{
    public function home(Request $request)
    {
        return view('formupload.setelahtuweb.home');
    }

    public function index(Request $request)
    {
        $getAllMtk = DB::select('select kode_mtk,nama_mtk_singkat from m_mata_kuliah');
        $masas = DB::SELECT('select * from masas');
        return view('formupload.setelahtuweb.settuweb', compact('getAllMtk', 'masas'));
    }

    public function upload_settuweb(Request $request)
    {

        $this->validate($request, [
            'rekap' => 'required|max:10000',
            'kompetensi' => 'required|max:10000',
            'rat' => 'required|max:10000',
            'sat' => 'required|max:10000',
            'kisitugastutorial' => 'required|max:10000',
            'materi' => 'required|max:10000',
            'materi2' => 'required|max:10000',
            'materi3' => 'required|max:10000',
            'materi4' => 'required|max:10000',
            'materi5' => 'required|max:10000',
            'materi6' => 'required|max:10000',
            'materi7' => 'required|max:10000',
            'materi8' => 'required|max:10000',
            'catatan' => 'required|max:10000',
            'kisi' => 'required|max:10000',
            'kisi2' => 'required|max:10000',
            'kisi3' => 'required|max:10000',
            'pedoman' => 'required|max:10000',
            'pedoman2' => 'required|max:10000',
            'pedoman3' => 'required|max:10000',
            'tandaterima' => 'required|max:10000',
            'tandaterima2' => 'required|max:10000',
            'tandaterima3' => 'required|max:10000',
            'nilaitertinggi' => 'required|max:10000',
            'nilaiterendah' => 'required|max:10000',
            'sspertemuan' => 'required|max:10000',

        ]);

        $data = [
            "nama" => Auth::user()->name,
            "kdmtk" => $request->kdmtk,
            "masa" => $request->masa,
            "rekap" => $request->rekap,
            "kompetensi" => $request->kompetensi,
            "rat" => $request->rat,
            "sat" => $request->sat,
            "kisitugastutorial" => $request->kisitugastutorial,
            "materi" => $request->materi,
            "materi2" => $request->materi2,
            "materi3" => $request->materi3,
            "materi4" => $request->materi4,
            "materi5" => $request->materi5,
            "materi6" => $request->materi6,
            "materi7" => $request->materi7,
            "materi8" => $request->materi8,
            "catatan" => $request->catatan,
            "kisi" => $request->kisi,
            "kisi2" => $request->kisi2,
            "kisi3" => $request->kisi3,
            "pedoman" => $request->pedoman,
            "pedoman2" => $request->pedoman2,
            "pedoman3" => $request->pedoman3,
            "tandaterima" => $request->tandaterima,
            "tandaterima2" => $request->tandaterima2,
            "tandaterima3" => $request->tandaterima3,
            "nilaitertinggi" => $request->nilaitertinggi,
            "nilaiterendah" => $request->nilaiterendah,
            "sspertemuan" => $request->sspertemuan,
        ];


        foreach ($data as $key => $value) {
            $tempFile = TemporaryFile::where('filename', $value)->where('type', $key)->first();
            // return dd($tempFile, $key, $value);
            if ($tempFile) {
                Storage::move(
                    'public/temp/' . $tempFile->folder . '/' . $tempFile->filename,
                    'public/file/' . $tempFile->folder . '/' . $tempFile->type . '/' . $tempFile->filename
                );

                rmdir(storage_path('app/public/temp/' . $tempFile->folder));
                $data[$key] = $tempFile->folder . '/' . $tempFile->type . '/' . $tempFile->filename;

                $tempFile->delete();
            }
        }
        $upload = UploadSettuweb::create($data);
        toast('Data Berhasil di Input!', 'success');
        return redirect()->route('member.settuweb');
    }

    public function tampil()
    {
        $upload_settuweb = UploadSettuweb::all();
        return view('admin.dashboard_settuweb', compact('upload_settuweb'));
    }

    public function download_file($id, $type)
    {
        $upload = UploadSettuweb::find($id);
        $nama = $upload->$type;
        $filename = public_path('storage/file/' . $nama);
        if (file_exists($filename)) {
            $nama = substr($nama, strrpos($nama, '/') + 1);
            return response()->download($filename, $nama, [], 'inline');
        } else {
            return redirect()->back();
        }
    }

    function downloadZip(UploadSettuweb $upload)
    {
        $data = $upload->toArray();

        $nama = $data['nama'];

        unset($data['id'], $data['nama'], $data['masa'], $data['kdmtk'], $data['created_at'], $data['updated_at']);

        foreach ($data as $index => $val) {
            if ($val === "") {
                continue;
            }
            // $files[$index] = glob(public_path("files/{$val}"));

            $files[] = public_path("storage/file/{$val}");
        }

        \Madzipper::make(public_path("{$nama}.zip"))->add($files)->close();

        return response()->download(public_path("{$nama}.zip"))->deleteFileAfterSend(true);
    }

    function upload(Request $request, $type)
    {
        if ($request->hasFile($type)) {
            $file = $request->file($type);
            $fileName = $file->getClientOriginalName();
            $folder = uniqid() . '-' . Carbon::now()->timestamp;

            $file->move(storage_path('app/public/temp/' . $folder), $fileName);

            TemporaryFile::create([
                'folder' => $folder,
                'type' => $type,
                'filename' => $fileName
            ]);

            return $fileName;
        }

        return '';
    }
}

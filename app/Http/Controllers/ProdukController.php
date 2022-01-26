<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    //insert data
    public function create(Request $request)
    {

        $kodeProduk = $request->input('kode_produk');
        $namaProduk = $request->input('nama_produk');
        $harga = $request->input('harga');
        //insert data ke tabel produk
        $insert = Produk::create([
            'kode_produk' => $kodeProduk,
            'nama_produk' => $namaProduk,
            'harga' => $harga
        ]);

        return $this->responseHasil(200, true, $insert);
    }
    //menampilkan semua data
    public function list()
    {
        $produk = Produk::all();
        return $this->responseHasil(200, true, $produk);
    }
    //menampilkan data per item / detail produk
    public function show($id)
    {
        $produk = Produk::FindorFail($id);

        return $this->responseHasil(200, true, $produk);
    }

    public function update(Request $request, $id)
    {

        $kodeProduk = $request->input('kode_produk');
        $namaProduk = $request->input('nama_produk');
        $harga = $request->input('harga');
        //ambildata dari tabel produk
        $produk = Produk::FindorFail($id);
        $update = $produk->update([
            'kode_produk' => $kodeProduk,
            'nama_produk' => $namaProduk,
            'harga' => $harga
        ]);

        return $this->responseHasil(200, true, $update);
    }

    //hapus data
    public function delete($id)
    {
        $produk = Produk::FindorFail($id);
        $delete = $produk->delete($id);
        return $this->responseHasil(200, true, $delete);
    }
}

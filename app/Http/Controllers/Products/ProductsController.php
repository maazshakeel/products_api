<?php

namespace App\Http\Controllers\Products;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest;

use App\Repositories\ProductRepository;
use App\Traits\ResponseTrait;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;


class ProductsController extends Controller
{
    /**
     * Response trait to handle return responses.
     */
    use ResponseTrait;

    /**
     * Product Repository class.
     *
     * @var ProductRepository
     */
    public $productRepository;

    public function __construct(ProductRepository $productRepository)
    {
        $this->middleware('auth:api', ['except' => ['indexAll']]);
        $this->productRepository = $productRepository;
    }

    public function index(): JsonResponse
    {
        // checking 
        try {
            $data = $this->productRepository->getAll();
            return $this->responseSuccess($data, 'Product List Fetch Successfully !');
        } catch (\Exception $e) {
            // exception if error
            return $this->responseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function indexAll(Request $request): JsonResponse
    {
        try {
            $data = $this->productRepository->getPaginatedData($request->perPage);
            return $this->responseSuccess($data, 'Product List Fetched Successfully !');
        } catch (\Exception $e) {
            return $this->responseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function search(Request $request): JsonResponse
    {
        try {
            $data = $this->productRepository->searchProduct($request->search, $request->perPage);
            return $this->responseSuccess($data, 'Product List Fetched Successfully !');
        } catch (\Exception $e) {
            return $this->responseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function store(ProductRequest $request): JsonResponse
    {
        try {
            $product = $this->productRepository->create($request->all());
            return $this->responseSuccess($product, 'New Product Created Successfully !');
        } catch (\Exception $exception) {
            return $this->responseError(null, $exception->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function show($id): JsonResponse
    {
        try {
            $data = $this->productRepository->getByID($id);
            if (is_null($data)) {
                return $this->responseError(null, 'Product Not Found', Response::HTTP_NOT_FOUND);
            }

            return $this->responseSuccess($data, 'Product Details Fetch Successfully !');
        } catch (\Exception $e) {
            return $this->responseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function update(ProductRequest $request, $id): JsonResponse
    {
        try {
            $data = $this->productRepository->update($id, $request->all());
            if (is_null($data))
                return $this->responseError(null, 'Product Not Found', Response::HTTP_NOT_FOUND);

            return $this->responseSuccess($data, 'Product Updated Successfully !');
        } catch (\Exception $e) {
            return $this->responseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function destroy($id): JsonResponse
    {
        try {
            $product =  $this->productRepository->getByID($id);
            if (empty($product)) {
                return $this->responseError(null, 'Product Not Found', Response::HTTP_NOT_FOUND);
            }

            $deleted = $this->productRepository->delete($id);
            if (!$deleted) {
                return $this->responseError(null, 'Failed to delete the product.', Response::HTTP_INTERNAL_SERVER_ERROR);
            }

            return $this->responseSuccess($product, 'Product Deleted Successfully !');
        } catch (\Exception $e) {
            return $this->responseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
}

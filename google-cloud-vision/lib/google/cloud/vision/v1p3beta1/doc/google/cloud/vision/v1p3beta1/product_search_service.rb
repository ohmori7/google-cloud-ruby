# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


module Google
  module Cloud
    module Vision
      module V1p3beta1
        # A Product contains ReferenceImages.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the product.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
        #
        #     This field is ignored when creating a product.
        # @!attribute [rw] display_name
        #   @return [String]
        #     The user-provided name for this Product. Must not be empty. Must be at most
        #     4096 characters long.
        # @!attribute [rw] description
        #   @return [String]
        #     User-provided metadata to be stored with this product. Must be at most 4096
        #     characters long.
        # @!attribute [rw] product_category
        #   @return [String]
        #     Immutable. The category for the product identified by the reference image. This should
        #     be either "homegoods-v2", "apparel-v2", or "toys-v2". The legacy categories
        #     "homegoods", "apparel", and "toys" are still supported, but these should
        #     not be used for new products.
        # @!attribute [rw] product_labels
        #   @return [Array<Google::Cloud::Vision::V1p3beta1::Product::KeyValue>]
        #     Key-value pairs that can be attached to a product. At query time,
        #     constraints can be specified based on the product_labels.
        #
        #     Note that integer values can be provided as strings, e.g. "1199". Only
        #     strings with integer values can match a range-based restriction which is
        #     to be supported soon.
        #
        #     Multiple values can be assigned to the same key. One product may have up to
        #     100 product_labels.
        class Product
          # A product label represented as a key-value pair.
          # @!attribute [rw] key
          #   @return [String]
          #     The key of the label attached to the product. Cannot be empty and cannot
          #     exceed 128 bytes.
          # @!attribute [rw] value
          #   @return [String]
          #     The value of the label attached to the product. Cannot be empty and
          #     cannot exceed 128 bytes.
          class KeyValue; end
        end

        # A ProductSet contains Products. A ProductSet can contain a maximum of 1
        # million reference images. If the limit is exceeded, periodic indexing will
        # fail.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the ProductSet.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`.
        #
        #     This field is ignored when creating a ProductSet.
        # @!attribute [rw] display_name
        #   @return [String]
        #     The user-provided name for this ProductSet. Must not be empty. Must be at
        #     most 4096 characters long.
        # @!attribute [rw] index_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time at which this ProductSet was last indexed. Query
        #     results will reflect all updates before this time. If this ProductSet has
        #     never been indexed, this field is 0.
        #
        #     This field is ignored when creating a ProductSet.
        # @!attribute [rw] index_error
        #   @return [Google::Rpc::Status]
        #     Output only. If there was an error with indexing the product set, the field
        #     is populated.
        #
        #     This field is ignored when creating a ProductSet.
        class ProductSet; end

        # A `ReferenceImage` represents a product image and its associated metadata,
        # such as bounding boxes.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the reference image.
        #
        #     Format is:
        #
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
        #
        #     This field is ignored when creating a reference image.
        # @!attribute [rw] uri
        #   @return [String]
        #     Required. The Google Cloud Storage URI of the reference image.
        #
        #     The URI must start with `gs://`.
        # @!attribute [rw] bounding_polys
        #   @return [Array<Google::Cloud::Vision::V1p3beta1::BoundingPoly>]
        #     Optional. Bounding polygons around the areas of interest in the reference image.
        #     If this field is empty, the system will try to detect regions of
        #     interest. At most 10 bounding polygons will be used.
        #
        #     The provided shape is converted into a non-rotated rectangle. Once
        #     converted, the small edge of the rectangle must be greater than or equal
        #     to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
        #     is not).
        class ReferenceImage; end

        # Request message for the `CreateProduct` method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The project in which the Product should be created.
        #
        #     Format is
        #     `projects/PROJECT_ID/locations/LOC_ID`.
        # @!attribute [rw] product
        #   @return [Google::Cloud::Vision::V1p3beta1::Product]
        #     Required. The product to create.
        # @!attribute [rw] product_id
        #   @return [String]
        #     A user-supplied resource id for this Product. If set, the server will
        #     attempt to use this value as the resource id. If it is already in use, an
        #     error is returned with code ALREADY_EXISTS. Must be at most 128 characters
        #     long. It cannot contain the character `/`.
        class CreateProductRequest; end

        # Request message for the `ListProducts` method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The project OR ProductSet from which Products should be listed.
        #
        #     Format:
        #     `projects/PROJECT_ID/locations/LOC_ID`
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     The maximum number of items to return. Default 10, maximum 100.
        # @!attribute [rw] page_token
        #   @return [String]
        #     The next_page_token returned from a previous List request, if any.
        class ListProductsRequest; end

        # Response message for the `ListProducts` method.
        # @!attribute [rw] products
        #   @return [Array<Google::Cloud::Vision::V1p3beta1::Product>]
        #     List of products.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListProductsResponse; end

        # Request message for the `GetProduct` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Resource name of the Product to get.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
        class GetProductRequest; end

        # Request message for the `UpdateProduct` method.
        # @!attribute [rw] product
        #   @return [Google::Cloud::Vision::V1p3beta1::Product]
        #     Required. The Product resource which replaces the one on the server.
        #     product.name is immutable.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     The {Google::Protobuf::FieldMask FieldMask} that specifies which fields
        #     to update.
        #     If update_mask isn't specified, all mutable fields are to be updated.
        #     Valid mask paths include `product_labels`, `display_name`, and
        #     `description`.
        class UpdateProductRequest; end

        # Request message for the `DeleteProduct` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Resource name of product to delete.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
        class DeleteProductRequest; end

        # Request message for the `CreateProductSet` method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The project in which the ProductSet should be created.
        #
        #     Format is `projects/PROJECT_ID/locations/LOC_ID`.
        # @!attribute [rw] product_set
        #   @return [Google::Cloud::Vision::V1p3beta1::ProductSet]
        #     Required. The ProductSet to create.
        # @!attribute [rw] product_set_id
        #   @return [String]
        #     A user-supplied resource id for this ProductSet. If set, the server will
        #     attempt to use this value as the resource id. If it is already in use, an
        #     error is returned with code ALREADY_EXISTS. Must be at most 128 characters
        #     long. It cannot contain the character `/`.
        class CreateProductSetRequest; end

        # Request message for the `ListProductSets` method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The project from which ProductSets should be listed.
        #
        #     Format is `projects/PROJECT_ID/locations/LOC_ID`.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     The maximum number of items to return. Default 10, maximum 100.
        # @!attribute [rw] page_token
        #   @return [String]
        #     The next_page_token returned from a previous List request, if any.
        class ListProductSetsRequest; end

        # Response message for the `ListProductSets` method.
        # @!attribute [rw] product_sets
        #   @return [Array<Google::Cloud::Vision::V1p3beta1::ProductSet>]
        #     List of ProductSets.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListProductSetsResponse; end

        # Request message for the `GetProductSet` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Resource name of the ProductSet to get.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
        class GetProductSetRequest; end

        # Request message for the `UpdateProductSet` method.
        # @!attribute [rw] product_set
        #   @return [Google::Cloud::Vision::V1p3beta1::ProductSet]
        #     Required. The ProductSet resource which replaces the one on the server.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     The {Google::Protobuf::FieldMask FieldMask} that specifies which fields to
        #     update.
        #     If update_mask isn't specified, all mutable fields are to be updated.
        #     Valid mask path is `display_name`.
        class UpdateProductSetRequest; end

        # Request message for the `DeleteProductSet` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Resource name of the ProductSet to delete.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
        class DeleteProductSetRequest; end

        # Request message for the `CreateReferenceImage` method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. Resource name of the product in which to create the reference image.
        #
        #     Format is
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
        # @!attribute [rw] reference_image
        #   @return [Google::Cloud::Vision::V1p3beta1::ReferenceImage]
        #     Required. The reference image to create.
        #     If an image ID is specified, it is ignored.
        # @!attribute [rw] reference_image_id
        #   @return [String]
        #     A user-supplied resource id for the ReferenceImage to be added. If set,
        #     the server will attempt to use this value as the resource id. If it is
        #     already in use, an error is returned with code ALREADY_EXISTS. Must be at
        #     most 128 characters long. It cannot contain the character `/`.
        class CreateReferenceImageRequest; end

        # Request message for the `ListReferenceImages` method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. Resource name of the product containing the reference images.
        #
        #     Format is
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     The maximum number of items to return. Default 10, maximum 100.
        # @!attribute [rw] page_token
        #   @return [String]
        #     A token identifying a page of results to be returned. This is the value
        #     of `nextPageToken` returned in a previous reference image list request.
        #
        #     Defaults to the first page if not specified.
        class ListReferenceImagesRequest; end

        # Response message for the `ListReferenceImages` method.
        # @!attribute [rw] reference_images
        #   @return [Array<Google::Cloud::Vision::V1p3beta1::ReferenceImage>]
        #     The list of reference images.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     The maximum number of items to return. Default 10, maximum 100.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     The next_page_token returned from a previous List request, if any.
        class ListReferenceImagesResponse; end

        # Request message for the `GetReferenceImage` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The resource name of the ReferenceImage to get.
        #
        #     Format is:
        #
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
        class GetReferenceImageRequest; end

        # Request message for the `DeleteReferenceImage` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The resource name of the reference image to delete.
        #
        #     Format is:
        #
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`
        class DeleteReferenceImageRequest; end

        # Request message for the `AddProductToProductSet` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The resource name for the ProductSet to modify.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
        # @!attribute [rw] product
        #   @return [String]
        #     Required. The resource name for the Product to be added to this ProductSet.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
        class AddProductToProductSetRequest; end

        # Request message for the `RemoveProductFromProductSet` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The resource name for the ProductSet to modify.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
        # @!attribute [rw] product
        #   @return [String]
        #     Required. The resource name for the Product to be removed from this ProductSet.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
        class RemoveProductFromProductSetRequest; end

        # Request message for the `ListProductsInProductSet` method.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The ProductSet resource for which to retrieve Products.
        #
        #     Format is:
        #     `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     The maximum number of items to return. Default 10, maximum 100.
        # @!attribute [rw] page_token
        #   @return [String]
        #     The next_page_token returned from a previous List request, if any.
        class ListProductsInProductSetRequest; end

        # Response message for the `ListProductsInProductSet` method.
        # @!attribute [rw] products
        #   @return [Array<Google::Cloud::Vision::V1p3beta1::Product>]
        #     The list of Products.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListProductsInProductSetResponse; end

        # The Google Cloud Storage location for a csv file which preserves a list of
        # ImportProductSetRequests in each line.
        # @!attribute [rw] csv_file_uri
        #   @return [String]
        #     The Google Cloud Storage URI of the input csv file.
        #
        #     The URI must start with `gs://`.
        #
        #     The format of the input csv file should be one image per line.
        #     In each line, there are 6 columns.
        #     1. image_uri
        #     2, image_id
        #     3. product_set_id
        #     4. product_id
        #     5, product_category
        #     6, product_display_name
        #     7, labels
        #     8. bounding_poly
        #
        #     Columns 1, 3, 4, and 5 are required, other columns are optional. A new
        #     ProductSet/Product with the same id will be created on the fly
        #     if the ProductSet/Product specified by product_set_id/product_id does not
        #     exist.
        #
        #     The image_id field is optional but has to be unique if provided. If it is
        #     empty, we will automatically assign an unique id to the image.
        #
        #     The product_display_name field is optional. If it is empty, a space (" ")
        #     is used as the place holder for the product display_name, which can
        #     be updated later through the realtime API.
        #
        #     If the Product with product_id already exists, the fields
        #     product_display_name, product_category and labels are ignored.
        #
        #     If a Product doesn't exist and needs to be created on the fly, the
        #     product_display_name field refers to
        #     {Google::Cloud::Vision::V1p3beta1::Product#display_name Product#display_name},
        #     the product_category field refers to
        #     {Google::Cloud::Vision::V1p3beta1::Product#product_category Product#product_category},
        #     and the labels field refers to {Product#labels}.
        #
        #     Labels (optional) should be a line containing a list of comma-separated
        #     key-value pairs, with the format
        #         "key_1=value_1,key_2=value_2,...,key_n=value_n".
        #
        #     The bounding_poly (optional) field is used to identify one region of
        #     interest from the image in the same manner as CreateReferenceImage. If no
        #     bounding_poly is specified, the system will try to detect regions of
        #     interest automatically.
        #
        #     Note that the pipeline will resize the image if the image resolution is too
        #     large to process (above 20MP).
        #
        #     Also note that at most one bounding_poly is allowed per line. If the image
        #     contains multiple regions of interest, the csv should contain one line per
        #     region of interest.
        #
        #     The bounding_poly column should contain an even number of comma-separated
        #     numbers, with the format "p1_x,p1_y,p2_x,p2_y,...,pn_x,pn_y". Nonnegative
        #     integers should be used for absolute bounding polygons, and float values
        #     in [0, 1] should be used for normalized bounding polygons.
        class ImportProductSetsGcsSource; end

        # The input content for the `ImportProductSets` method.
        # @!attribute [rw] gcs_source
        #   @return [Google::Cloud::Vision::V1p3beta1::ImportProductSetsGcsSource]
        #     The Google Cloud Storage location for a csv file which preserves a list
        #     of ImportProductSetRequests in each line.
        class ImportProductSetsInputConfig; end

        # Request message for the `ImportProductSets` method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The project in which the ProductSets should be imported.
        #
        #     Format is `projects/PROJECT_ID/locations/LOC_ID`.
        # @!attribute [rw] input_config
        #   @return [Google::Cloud::Vision::V1p3beta1::ImportProductSetsInputConfig]
        #     Required. The input content for the list of requests.
        class ImportProductSetsRequest; end

        # Response message for the `ImportProductSets` method.
        #
        # This message is returned by the
        # {Google::Longrunning::Operations::GetOperation}
        # method in the returned
        # {Google::Longrunning::Operation#response}
        # field.
        # @!attribute [rw] reference_images
        #   @return [Array<Google::Cloud::Vision::V1p3beta1::ReferenceImage>]
        #     The list of reference_images that are imported successfully.
        # @!attribute [rw] statuses
        #   @return [Array<Google::Rpc::Status>]
        #     The rpc status for each ImportProductSet request, including both successes
        #     and errors.
        #
        #     The number of statuses here matches the number of lines in the csv file,
        #     and statuses[i] stores the success or failure status of processing the i-th
        #     line of the csv, starting from line 0.
        class ImportProductSetsResponse; end

        # Metadata for the batch operations such as the current state.
        #
        # This is included in the `metadata` field of the `Operation` returned by the
        # `GetOperation` call of the `google::longrunning::Operations` service.
        # @!attribute [rw] state
        #   @return [Google::Cloud::Vision::V1p3beta1::BatchOperationMetadata::State]
        #     The current state of the batch operation.
        # @!attribute [rw] submit_time
        #   @return [Google::Protobuf::Timestamp]
        #     The time when the batch request was submitted to the server.
        # @!attribute [rw] end_time
        #   @return [Google::Protobuf::Timestamp]
        #     The time when the batch request is finished and
        #     {Google::Longrunning::Operation#done} is
        #     set to true.
        class BatchOperationMetadata
          # Enumerates the possible states that the batch request can be in.
          module State
            # Invalid.
            STATE_UNSPECIFIED = 0

            # Request is actively being processed.
            PROCESSING = 1

            # The request is done and at least one item has been successfully
            # processed.
            SUCCESSFUL = 2

            # The request is done and no item has been successfully processed.
            FAILED = 3

            # The request is done after the longrunning.Operations.CancelOperation has
            # been called by the user.  Any records that were processed before the
            # cancel command are output as specified in the request.
            CANCELLED = 4
          end
        end
      end
    end
  end
end
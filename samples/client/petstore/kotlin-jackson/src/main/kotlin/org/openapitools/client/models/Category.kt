/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.fasterxml.jackson.annotation.JsonProperty

/**
 * A category for a pet
 *
 * @param id 
 * @param name 
 */


data class Category (

    @field:JsonProperty("id")
    val id: kotlin.Long? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null

)


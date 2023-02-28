#
# OpenAPI Petstore
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: "" \
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

The value may be a shape or the 'null' value. The 'nullable' attribute was introduced in OAS schema >= 3.0 and has been deprecated in OAS schema >= 3.1.

.PARAMETER Json

JSON object

.OUTPUTS

NullableShape<PSCustomObject>
#>
function ConvertFrom-PSJsonToNullableShape {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # nullable check
        if ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") {
            return [PSCustomObject]@{
                "ActualType" = $null
                "ActualInstance" = $null
                "OneOfSchemas" = @("Quadrilateral", "Triangle")
            }
        }

        # try to match Quadrilateral defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-PSJsonToQuadrilateral $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Quadrilateral"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Quadrilateral' defined in oneOf (PSNullableShape). Proceeding to the next one if any."
        }

        # try to match Triangle defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-PSJsonToTriangle $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Triangle"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Triangle' defined in oneOf (PSNullableShape). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([Quadrilateral, Triangle]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("Quadrilateral", "Triangle")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([Quadrilateral, Triangle]). JSON Payload: $($Json)"
        }
    }
}


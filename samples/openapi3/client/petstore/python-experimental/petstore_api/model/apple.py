# coding: utf-8

"""
    OpenAPI Petstore

    This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Generated by: https://openapi-generator.tech
"""

import re  # noqa: F401
import sys  # noqa: F401
import typing  # noqa: F401

from frozendict import frozendict  # noqa: F401

import decimal  # noqa: F401
from datetime import date, datetime  # noqa: F401
from frozendict import frozendict  # noqa: F401

from petstore_api.schemas import (  # noqa: F401
    AnyTypeSchema,
    ComposedSchema,
    DictSchema,
    ListSchema,
    StrSchema,
    IntSchema,
    Int32Schema,
    Int64Schema,
    Float32Schema,
    Float64Schema,
    NumberSchema,
    DateSchema,
    DateTimeSchema,
    DecimalSchema,
    BoolSchema,
    BinarySchema,
    NoneSchema,
    none_type,
    InstantiationMetadata,
    Unset,
    unset,
    ComposedBase,
    ListBase,
    DictBase,
    NoneBase,
    StrBase,
    IntBase,
    Int32Base,
    Int64Base,
    Float32Base,
    Float64Base,
    NumberBase,
    DateBase,
    DateTimeBase,
    BoolBase,
    BinaryBase,
    Schema,
    _SchemaValidator,
    _SchemaTypeChecker,
    _SchemaEnumMaker
)


class Apple(
    _SchemaTypeChecker(typing.Union[frozendict, none_type, ]),
    DictBase,
    NoneBase,
    Schema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """
    _required_property_names = set((
        'cultivar',
    ))
    
    
    class cultivar(
        _SchemaValidator(
            regex=[{
                'pattern': r'^[a-zA-Z\s]*$',  # noqa: E501
            }],
        ),
        StrSchema
    ):
        pass
    
    
    class origin(
        _SchemaValidator(
            regex=[{
                'pattern': r'^[A-Z\s]*$',  # noqa: E501
                'flags': (
                    re.IGNORECASE
                )
            }],
        ),
        StrSchema
    ):
        pass

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict, None, ],
        origin: typing.Union[origin, Unset] = unset,
        _instantiation_metadata: typing.Optional[InstantiationMetadata] = None,
        **kwargs: typing.Type[Schema],
    ) -> 'Apple':
        return super().__new__(
            cls,
            *args,
            origin=origin,
            _instantiation_metadata=_instantiation_metadata,
            **kwargs,
        )

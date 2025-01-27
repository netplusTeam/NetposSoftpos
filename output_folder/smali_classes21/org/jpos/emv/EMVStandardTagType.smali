.class public final enum Lorg/jpos/emv/EMVStandardTagType;
.super Ljava/lang/Enum;
.source "EMVStandardTagType.java"

# interfaces
.implements Lorg/jpos/emv/EMVTagType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableByteLength;,
        Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedByteLength;,
        Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableDiscreteByteLength;,
        Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableDiscreteDataLength;,
        Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableDataLength;,
        Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedDataLength;,
        Lorg/jpos/emv/EMVStandardTagType$MapHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/emv/EMVStandardTagType;",
        ">;",
        "Lorg/jpos/emv/EMVTagType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ACCOUNT_TYPE_0x5F57:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ACQUIRER_IDENTIFIER_0x9F01:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ADDITIONAL_TERMINAL_CAPABILITIES_0x9F40:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum AMOUNT_AUTHORISED_BINARY_0x81:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum AMOUNT_AUTHORISED_NUMERIC_0x9F02:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum AMOUNT_OTHER_BINARY_0x9F04:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum AMOUNT_OTHER_NUMERIC_0x9F03:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum AMOUNT_REFERENCE_CURRENCY_0x9F3A:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_CRYPTOGRAM_0x9F26:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_CURRENCY_CODE_0x9F42:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_CURRENCY_EXPONENT_0x9F44:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_DEDICATED_FILE_NAME_0x4F:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_DISCRETIONARY_DATA_0x9F05:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_EFFECTIVE_DATE_0x5F25:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_EXPIRATION_DATE_0x5F24:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_FILE_LOCATOR_0x94:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_IDENTIFIER_TERMINAL_0x9F06:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_INTERCHANGE_PROFILE_0x82:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_LABEL_0x50:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_PREFERRED_NAME_0x9F12:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_PRIMARY_ACCOUNT_NUMBER_0x5A:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_PRIMARY_ACCOUNT_NUMBER_SEQUENCE_NUMBER_0x5F34:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_PRIORITY_INDICATOR_0x87:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_REFERENCE_CURRENCY_0x9F3B:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_REFERENCE_CURRENCY_EXPONENT_0x9F43:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_TEMPLATE_0x61:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_TRANSACTION_COUNTER_0x9F36:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_USAGE_CONTROL_0x9F07:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_VERSION_NUMBER_ICC_0x9F08:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum APPLICATION_VERSION_NUMBER_TERMINAL_0x9F09:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum AUTHORISATION_CODE_0x89:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum AUTHORISATION_RESPONSE_CODE_0x8A:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum BANK_IDENTIFIER_CODE_0x5F54:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CARDHOLDER_NAME_0x5F20:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CARDHOLDER_NAME_EXTENDED_0x9F0B:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CARDHOLDER_VERIFICATION_METHOD_CVM_RESULTS_0x9F34:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CARDHOLDER_VERIFICATION_METHOD_LIST_0x8E:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CARD_RISK_MANAGEMENT_DATA_OBJECT_LIST_1_0x8C:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CARD_RISK_MANAGEMENT_DATA_OBJECT_LIST_2_0x8D:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CERTIFICATION_AUTHORITY_PUBLIC_KEY_INDEX_0x8F:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CERTIFICATION_AUTHORITY_PUBLIC_KEY_INDEX_0x9F22:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum COMMAND_TEMPLATE_0x83:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum CRYPTOGRAM_INFORMATION_DATA_0x9F27:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum DATA_AUTHENTICATION_CODE_0x9F45:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum DEDICATED_FILE_NAME_0x84:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum DIRECTORY_DEFINITION_FILE_NAME_0x9D:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum DIRECTORY_DISCRETIONARY_TEMPLATE_0x73:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum DYNAMIC_DATA_AUTHENTICATION_DATA_OBJECT_LIST_0x9F49:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum FILE_CONTROL_INFORMATION_ISSUER_DISCRETIONARY_DATA_0xBF0C:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum FILE_CONTROL_INFORMATION_PROPRIETARY_TEMPLATE_0xA5:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum FILE_CONTROL_INFORMATION_TEMPLATE_0x6F:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ICC_DYNAMIC_NUMBER_0x9F4C:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_CERTIFICATE_0x9F2D:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_EXPONENT_0x9F2E:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_REMAINDER_0x9F2F:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_CERTIFICATE_0x9F46:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_EXPONENT_0x9F47:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_REMAINDER_0x9F48:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum INTERFACE_DEVICE_IFD_SERIAL_NUMBER_0x9F1E:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum INTERNATIONAL_BANK_ACCOUNT_NUMBER_0x5F53:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_ACTION_CODE_DEFAULT_0x9F0D:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_ACTION_CODE_DENIAL_0x9F0E:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_ACTION_CODE_ONLINE_0x9F0F:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_APPLICATION_DATA_0x9F10:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_AUTHENTICATION_DATA_0x91:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_CODE_TABLE_INDEX_0x9F11:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_COUNTRY_CODE_0x5F28:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_COUNTRY_CODE_ALPHA_2_0x5F55:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_COUNTRY_CODE_ALPHA_3_0x5F56:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_IDENTIFICATION_NUMBER_0x42:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_PUBLIC_KEY_CERTIFICATE_0x90:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_PUBLIC_KEY_EXPONENT_0x9F32:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_PUBLIC_KEY_REMAINDER_0x92:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_SCRIPT_COMMAND_0x86:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_SCRIPT_IDENTIFIER_0x9F18:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_SCRIPT_TEMPLATE_1_0x71:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_SCRIPT_TEMPLATE_2_0x72:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum ISSUER_URL_0x5F50:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum LANGUAGE_PREFERENCE_0x5F2D:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum LAST_ONLINE_APPLICATION_TRANSACTION_COUNTER_REGISTER_0x9F13:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum LOG_ENTRY_0x9F4D:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum LOG_FORMAT_0x9F4F:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum LOWER_CONSECUTIVE_OFFLINE_LIMIT_0x9F14:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum MERCHANT_CATEGORY_CODE_0x9F15:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum MERCHANT_IDENTIFIER_0x9F16:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum MERCHANT_NAME_AND_LOCATION_0x9F4E:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum PERSONAL_IDENTIFICATION_NUMBER_TRY_COUNTER_0x9F17:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum POINT_OF_SERVICE_POS_ENTRY_MODE_0x9F39:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum PROCESSING_OPTIONS_DATA_OBJECT_LIST_0x9F38:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum READ_RECORD_RESPONSE_MESSAGE_TEMPLATE_0x70:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum RESPONSE_MESSAGE_TEMPLATE_FORMAT_1_0x80:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum RESPONSE_MESSAGE_TEMPLATE_FORMAT_2_0x77:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum SERVICE_CODE_0x5F30:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum SHORT_FILE_IDENTIFIER_0x88:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum SIGNED_DYNAMIC_APPLICATION_DATA_0x9F4B:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum SIGNED_STATIC_APPLICATION_DATA_0x93:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum STATIC_DATA_AUTHENTICATION_TAG_LIST_0x9F4A:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TERMINAL_CAPABILITIES_0x9F33:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TERMINAL_COUNTRY_CODE_0x9F1A:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TERMINAL_FLOOR_LIMIT_0x9F1B:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TERMINAL_IDENTIFICATION_0x9F1C:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TERMINAL_RISK_MANAGEMENT_DATA_0x9F1D:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TERMINAL_TYPE_0x9F35:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TERMINAL_VERIFICATION_RESULTS_0x95:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRACK_1_DISCRETIONARY_DATA_0x9F1F:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRACK_2_DISCRETIONARY_DATA_0x9F20:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRACK_2_EQUIVALENT_DATA_0x57:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_CERTIFICATE_DATA_OBJECT_LIST_0x97:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_CERTIFICATE_HASH_VALUE_0x98:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_CURRENCY_CODE_0x5F2A:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_CURRENCY_EXPONENT_0x5F36:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_DATE_0x9A:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_PERSONAL_IDENTIFICATION_NUMBER_PIN_DATA_0x99:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_REFERENCE_CURRENCY_CODE_0x9F3C:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_REFERENCE_CURRENCY_EXPONENT_0x9F3D:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_SEQUENCE_COUNTER_0x9F41:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_STATUS_INFORMATION_0x9B:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_TIME_0x9F21:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum TRANSACTION_TYPE_0x9C:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum UNPREDICTABLE_NUMBER_0x9F37:Lorg/jpos/emv/EMVStandardTagType;

.field public static final enum UPPER_CONSECUTIVE_OFFLINE_LIMIT_0x9F23:Lorg/jpos/emv/EMVStandardTagType;


# instance fields
.field private final byteLength:Lorg/jpos/emv/EMVTagType$ByteLength;

.field private final dataLength:Lorg/jpos/emv/EMVTagType$DataLength;

.field private final format:Lorg/jpos/tlv/TLVDataFormat;

.field private final source:Lorg/jpos/emv/EMVTagType$DataSource;

.field private final tagDescription:Ljava/lang/String;

.field private final tagNumber:I

.field private final tagShortDescription:Ljava/lang/String;

.field private final template:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 153

    .line 34
    new-instance v11, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v6, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v7, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v8, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v12, 0x2

    invoke-direct {v8, v12}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 36
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    new-instance v10, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    const/4 v15, 0x1

    invoke-direct {v10, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v1, "ACCOUNT_TYPE_0x5F57"

    const/4 v2, 0x0

    const/16 v3, 0x5f57

    const-string v4, "Account Type"

    const-string v5, "Indicates the type of account selected on the terminal, coded as specified in Annex G"

    move-object v0, v11

    move-object/from16 v9, v25

    invoke-direct/range {v0 .. v10}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v11, Lorg/jpos/emv/EMVStandardTagType;->ACCOUNT_TYPE_0x5F57:Lorg/jpos/emv/EMVStandardTagType;

    .line 38
    new-instance v0, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v1, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v2, 0x6

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 40
    new-instance v4, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v4, v2}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v5, "ACQUIRER_IDENTIFIER_0x9F01"

    const/16 v16, 0x1

    const v17, 0x9f01

    const-string v18, "Acquirer Identifier"

    const-string v19, "Uniquely identifies the acquirer within each payment system"

    move-object v14, v0

    move v6, v15

    move-object v15, v5

    move-object/from16 v22, v1

    move-object/from16 v23, v25

    move-object/from16 v24, v4

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v0, Lorg/jpos/emv/EMVStandardTagType;->ACQUIRER_IDENTIFIER_0x9F01:Lorg/jpos/emv/EMVStandardTagType;

    .line 41
    new-instance v1, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v4, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 43
    new-instance v7, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v7, v5}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "ADDITIONAL_TERMINAL_CAPABILITIES_0x9F40"

    const/16 v16, 0x2

    const v17, 0x9f40

    const-string v18, "Additional Terminal Capabilities"

    const-string v19, "Indicates the data input and output capabilities of the terminal"

    move-object v14, v1

    move-object/from16 v22, v4

    move-object/from16 v24, v7

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v1, Lorg/jpos/emv/EMVStandardTagType;->ADDITIONAL_TERMINAL_CAPABILITIES_0x9F40:Lorg/jpos/emv/EMVStandardTagType;

    .line 44
    new-instance v4, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v7, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 46
    new-instance v9, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v9, v8}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "AMOUNT_AUTHORISED_BINARY_0x81"

    const/16 v16, 0x3

    const/16 v17, 0x81

    const-string v18, "Amount, Authorised (Binary)"

    const-string v19, "Authorised amount of the transaction (excluding adjustments)"

    move-object v14, v4

    move-object/from16 v22, v7

    move-object/from16 v24, v9

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v4, Lorg/jpos/emv/EMVStandardTagType;->AMOUNT_AUTHORISED_BINARY_0x81:Lorg/jpos/emv/EMVStandardTagType;

    .line 47
    new-instance v7, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v9, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/16 v10, 0xc

    invoke-direct {v9, v10}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 49
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v2}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "AMOUNT_AUTHORISED_NUMERIC_0x9F02"

    const/16 v17, 0x4

    const v18, 0x9f02

    const-string v19, "Amount, Authorised (Numeric)"

    const-string v22, "Authorised amount of the transaction (excluding adjustments)"

    move-object v14, v7

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v9

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v7, Lorg/jpos/emv/EMVStandardTagType;->AMOUNT_AUTHORISED_NUMERIC_0x9F02:Lorg/jpos/emv/EMVStandardTagType;

    .line 50
    new-instance v9, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    invoke-direct {v15, v8}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 52
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v14, v8}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "AMOUNT_OTHER_BINARY_0x9F04"

    const/16 v17, 0x5

    const v18, 0x9f04

    const-string v19, "Amount, Other (Binary)"

    const-string v22, "Secondary amount associated with the transaction representing a cashback amount"

    move-object/from16 v24, v14

    move-object v14, v9

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v9, Lorg/jpos/emv/EMVStandardTagType;->AMOUNT_OTHER_BINARY_0x9F04:Lorg/jpos/emv/EMVStandardTagType;

    .line 54
    new-instance v26, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    invoke-direct {v15, v10}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 56
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v14, v2}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "AMOUNT_OTHER_NUMERIC_0x9F03"

    const/16 v17, 0x6

    const v18, 0x9f03

    const-string v19, "Amount, Other (Numeric)"

    const-string v22, "Secondary amount associated with the transaction representing a cashback amount"

    move-object/from16 v24, v14

    move-object/from16 v14, v26

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v26, Lorg/jpos/emv/EMVStandardTagType;->AMOUNT_OTHER_NUMERIC_0x9F03:Lorg/jpos/emv/EMVStandardTagType;

    .line 58
    new-instance v27, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    invoke-direct {v15, v8}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 60
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v14, v8}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "AMOUNT_REFERENCE_CURRENCY_0x9F3A"

    const/16 v17, 0x7

    const v18, 0x9f3a

    const-string v19, "Amount, Reference Currency"

    const-string v22, "Authorised amount expressed in the reference currency"

    move-object/from16 v24, v14

    move-object/from16 v14, v27

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v27, Lorg/jpos/emv/EMVStandardTagType;->AMOUNT_REFERENCE_CURRENCY_0x9F3A:Lorg/jpos/emv/EMVStandardTagType;

    .line 61
    new-instance v39, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v34, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v35, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/16 v15, 0x8

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 63
    const/16 v40, 0x77

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    new-instance v10, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v10, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v29, "APPLICATION_CRYPTOGRAM_0x9F26"

    const/16 v30, 0x8

    const v31, 0x9f26

    const-string v32, "Application Cryptogram"

    const-string v33, "Cryptogram returned by the ICC in response of the GENERATE AC command"

    move-object/from16 v28, v39

    move-object/from16 v36, v14

    move-object/from16 v37, v52

    move-object/from16 v38, v10

    invoke-direct/range {v28 .. v38}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v39, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_CRYPTOGRAM_0x9F26:Lorg/jpos/emv/EMVStandardTagType;

    .line 64
    new-instance v10, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v3, 0x3

    invoke-direct {v14, v3}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 66
    const/16 v29, 0x70

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v12}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "APPLICATION_CURRENCY_CODE_0x9F42"

    const/16 v43, 0x9

    const v44, 0x9f42

    const-string v45, "Application Currency Code"

    const-string v46, "Indicates the currency in which the account is managed according to ISO 4217"

    move-object/from16 v41, v10

    move-object/from16 v49, v14

    move-object/from16 v50, v30

    move-object/from16 v51, v15

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v10, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_CURRENCY_CODE_0x9F42:Lorg/jpos/emv/EMVStandardTagType;

    .line 68
    new-instance v31, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    invoke-direct {v14, v6}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 72
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v6}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "APPLICATION_CURRENCY_EXPONENT_0x9F44"

    const/16 v55, 0xa

    const v56, 0x9f44

    const-string v57, "Application Currency Exponent"

    const-string v58, "Indicates the implied position of the decimal point from the right of the amount represented according to ISO 4217"

    move-object/from16 v53, v31

    move-object/from16 v61, v14

    move-object/from16 v62, v30

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v31, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_CURRENCY_EXPONENT_0x9F44:Lorg/jpos/emv/EMVStandardTagType;

    .line 74
    new-instance v32, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v15, 0x10

    invoke-direct {v14, v5, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 76
    const/16 v33, 0x61

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    new-instance v8, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v8, v5, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "APPLICATION_DEDICATED_FILE_NAME_0x4F"

    const/16 v43, 0xb

    const/16 v44, 0x4f

    const-string v45, "Application Dedicated File (ADF) Name"

    const-string v46, "Identifies the application as described in ISO/IEC 7816-5"

    move-object/from16 v41, v32

    move-object/from16 v49, v14

    move-object/from16 v50, v34

    move-object/from16 v51, v8

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v32, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_DEDICATED_FILE_NAME_0x4F:Lorg/jpos/emv/EMVStandardTagType;

    .line 77
    new-instance v8, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v12, 0x20

    invoke-direct {v14, v6, v12}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 79
    new-instance v5, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v5, v6, v12}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "APPLICATION_DISCRETIONARY_DATA_0x9F05"

    const/16 v55, 0xc

    const v56, 0x9f05

    const-string v57, "Application Discretionary Data"

    const-string v58, "Issuer or payment system specified data relating to the application"

    move-object/from16 v53, v8

    move-object/from16 v61, v14

    move-object/from16 v63, v5

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v8, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_DISCRETIONARY_DATA_0x9F05:Lorg/jpos/emv/EMVStandardTagType;

    .line 80
    new-instance v5, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC_DATE_YYMMDD:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    invoke-direct {v14, v2}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 82
    new-instance v12, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v12, v3}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "APPLICATION_EFFECTIVE_DATE_0x5F25"

    const/16 v55, 0xd

    const/16 v56, 0x5f25

    const-string v57, "Application Effective Date"

    const-string v58, "Date from which the application may be used"

    move-object/from16 v53, v5

    move-object/from16 v61, v14

    move-object/from16 v63, v12

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v5, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_EFFECTIVE_DATE_0x5F25:Lorg/jpos/emv/EMVStandardTagType;

    .line 83
    new-instance v12, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC_DATE_YYMMDD:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    invoke-direct {v14, v2}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 85
    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v3}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "APPLICATION_EXPIRATION_DATE_0x5F24"

    const/16 v55, 0xe

    const/16 v56, 0x5f24

    const-string v57, "Application Expiration Date"

    const-string v58, "Date after which application expires"

    move-object/from16 v53, v12

    move-object/from16 v61, v14

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v12, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_EXPIRATION_DATE_0x5F24:Lorg/jpos/emv/EMVStandardTagType;

    .line 86
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v3, 0xfc

    invoke-direct {v14, v13, v3}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 90
    new-instance v6, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v6, v13, v3}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "APPLICATION_FILE_LOCATOR_0x94"

    const/16 v43, 0xf

    const/16 v44, 0x94

    const-string v45, "Application File Locator (AFL)"

    const-string v46, "Indicates the location (SFI, range of records) of the AEFs related to a given application"

    move-object/from16 v41, v2

    move-object/from16 v49, v14

    move-object/from16 v50, v52

    move-object/from16 v51, v6

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_FILE_LOCATOR_0x94:Lorg/jpos/emv/EMVStandardTagType;

    .line 92
    new-instance v6, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v13, 0x5

    invoke-direct {v14, v13, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 94
    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v13, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v13, "APPLICATION_IDENTIFIER_TERMINAL_0x9F06"

    const/16 v17, 0x10

    const v18, 0x9f06

    const-string v19, "Application Identifier (AID) \u2013 terminal"

    const-string v22, "Identifies the application as described in ISO/IEC 7816-5"

    move-object/from16 v23, v14

    move-object v14, v6

    move-object/from16 v65, v2

    move v2, v15

    move-object v15, v13

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v6, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_IDENTIFIER_TERMINAL_0x9F06:Lorg/jpos/emv/EMVStandardTagType;

    .line 95
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 97
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "APPLICATION_INTERCHANGE_PROFILE_0x82"

    const/16 v43, 0x11

    const/16 v44, 0x82

    const-string v45, "Application Interchange Profile"

    const-string v46, "Indicates the capabilities of the card to support specific functions in the application"

    move-object/from16 v41, v3

    move-object/from16 v49, v13

    move-object/from16 v51, v15

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_INTERCHANGE_PROFILE_0x82:Lorg/jpos/emv/EMVStandardTagType;

    .line 98
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPACE:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v2}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 100
    move-object/from16 v67, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v15, v2}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "APPLICATION_LABEL_0x50"

    const/16 v55, 0x12

    const/16 v56, 0x50

    const-string v57, "Application Label"

    const-string v58, "Mnemonic associated with the AID according to ISO/IEC 7816-5"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v62, v34

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_LABEL_0x50:Lorg/jpos/emv/EMVStandardTagType;

    .line 102
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v2}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 104
    move-object/from16 v68, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v15, v2}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "APPLICATION_PREFERRED_NAME_0x9F12"

    const/16 v55, 0x13

    const v56, 0x9f12

    const-string v57, "Application Preferred Name"

    const-string v58, "Preferred mnemonic associated with the AID"

    move-object/from16 v53, v3

    move-object/from16 v61, v14

    move-object/from16 v63, v13

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_PREFERRED_NAME_0x9F12:Lorg/jpos/emv/EMVStandardTagType;

    .line 106
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->COMPRESSED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v15, 0x13

    const/4 v2, 0x1

    invoke-direct {v14, v2, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 108
    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v69, v3

    const/16 v3, 0xa

    invoke-direct {v15, v2, v3}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "APPLICATION_PRIMARY_ACCOUNT_NUMBER_0x5A"

    const/16 v55, 0x14

    const/16 v56, 0x5a

    const-string v57, "Application Primary Account Number (PAN)"

    const-string v58, "Valid cardholder account number"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v62, v30

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_PRIMARY_ACCOUNT_NUMBER_0x5A:Lorg/jpos/emv/EMVStandardTagType;

    .line 109
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 112
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "APPLICATION_PRIMARY_ACCOUNT_NUMBER_SEQUENCE_NUMBER_0x5F34"

    const/16 v55, 0x15

    const/16 v56, 0x5f34

    const-string v57, "Application Primary Account Number (PAN) Sequence Number"

    const-string v58, "Identifies and differentiates cards with the same PAN"

    move-object/from16 v53, v2

    move-object/from16 v61, v14

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_PRIMARY_ACCOUNT_NUMBER_SEQUENCE_NUMBER_0x5F34:Lorg/jpos/emv/EMVStandardTagType;

    .line 113
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 115
    move-object/from16 v70, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "APPLICATION_PRIORITY_INDICATOR_0x87"

    const/16 v55, 0x16

    const/16 v56, 0x87

    const-string v57, "Application Priority Indicator"

    const-string v58, "Indicates the priority of a given application or group of applications in a directory"

    move-object/from16 v53, v3

    move-object/from16 v61, v14

    move-object/from16 v62, v34

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_PRIORITY_INDICATOR_0x87:Lorg/jpos/emv/EMVStandardTagType;

    .line 116
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 121
    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v71, v3

    move-object/from16 v66, v13

    const/16 v3, 0x8

    const/4 v13, 0x2

    invoke-direct {v15, v13, v3}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "APPLICATION_REFERENCE_CURRENCY_0x9F3B"

    const/16 v55, 0x17

    const v56, 0x9f3b

    const-string v57, "Application Reference Currency"

    const-string v58, "1-4 currency codes used between the terminal and the ICC when the Transaction Currency Code is different from the Application Currency Code; each code is 3 digits according to ISO 4217"

    move-object/from16 v53, v2

    move-object/from16 v61, v14

    move-object/from16 v62, v30

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_REFERENCE_CURRENCY_0x9F3B:Lorg/jpos/emv/EMVStandardTagType;

    .line 123
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 128
    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v72, v2

    const/4 v2, 0x4

    invoke-direct {v3, v15, v2}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "APPLICATION_REFERENCE_CURRENCY_EXPONENT_0x9F43"

    const/16 v55, 0x18

    const v56, 0x9f43

    const-string v57, "Application Reference Currency Exponent"

    const-string v58, "Indicates the implied position of the decimal point from the right of the amount, for each of the 1-4 reference currencies represented according to ISO 4217"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_REFERENCE_CURRENCY_EXPONENT_0x9F43:Lorg/jpos/emv/EMVStandardTagType;

    .line 129
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0xfb

    const/4 v15, 0x1

    invoke-direct {v3, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 133
    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v73, v13

    const/16 v13, 0xfc

    invoke-direct {v14, v15, v13}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "APPLICATION_TEMPLATE_0x61"

    const/16 v55, 0x19

    const/16 v56, 0x61

    const-string v57, "Application Template"

    const-string v58, "Contains one or more data objects relevant to an application directory entry according to ISO/IEC 7816-5"

    move-object/from16 v53, v2

    move-object/from16 v61, v3

    move-object/from16 v63, v14

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_TEMPLATE_0x61:Lorg/jpos/emv/EMVStandardTagType;

    .line 135
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 139
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "APPLICATION_TRANSACTION_COUNTER_0x9F36"

    const/16 v43, 0x1a

    const v44, 0x9f36

    const-string v45, "Application Transaction Counter (ATC)"

    const-string v46, "Counter maintained by the application in the ICC (incrementing the ATC is managed by the ICC)"

    move-object/from16 v41, v3

    move-object/from16 v49, v13

    move-object/from16 v51, v15

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_TRANSACTION_COUNTER_0x9F36:Lorg/jpos/emv/EMVStandardTagType;

    .line 140
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 144
    move-object/from16 v74, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v3, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "APPLICATION_USAGE_CONTROL_0x9F07"

    const/16 v55, 0x1b

    const v56, 0x9f07

    const-string v57, "Application Usage Control"

    const-string v58, "Indicates issuer\u2019s specified restrictions on the geographic usage and services allowed for the application"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_USAGE_CONTROL_0x9F07:Lorg/jpos/emv/EMVStandardTagType;

    .line 145
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 147
    move-object/from16 v75, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v13, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "APPLICATION_VERSION_NUMBER_ICC_0x9F08"

    const/16 v55, 0x1c

    const v56, 0x9f08

    const-string v57, "Application Version Number (ICC)"

    const-string v58, "Version number assigned by the payment system for the application. From ICC"

    move-object/from16 v53, v3

    move-object/from16 v61, v14

    move-object/from16 v63, v13

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_VERSION_NUMBER_ICC_0x9F08:Lorg/jpos/emv/EMVStandardTagType;

    .line 148
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 150
    move-object/from16 v76, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v3, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v17, "APPLICATION_VERSION_NUMBER_TERMINAL_0x9F09"

    const/16 v18, 0x1d

    const v19, 0x9f09

    const-string v22, "Application Version Number (Terminal)"

    const-string v23, "Version number assigned by the payment system for the application. From Terminal"

    move-object v14, v13

    move-object/from16 v77, v2

    move-object/from16 v24, v15

    const/16 v2, 0x13

    move-object/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_VERSION_NUMBER_TERMINAL_0x9F09:Lorg/jpos/emv/EMVStandardTagType;

    .line 153
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PROPRIETARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, -0x1

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 156
    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    const/4 v14, 0x6

    invoke-direct {v2, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v17, "AUTHORISATION_CODE_0x89"

    const/16 v18, 0x1e

    const/16 v19, 0x89

    const-string v22, "Authorisation Code"

    const-string v23, "Value generated by the authorisation authority for an approved transaction"

    move-object/from16 v78, v13

    const/4 v13, -0x1

    move-object v14, v3

    move-object/from16 v24, v15

    move-object/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->AUTHORISATION_CODE_0x89:Lorg/jpos/emv/EMVStandardTagType;

    .line 157
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 159
    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "AUTHORISATION_RESPONSE_CODE_0x8A"

    const/16 v17, 0x1f

    const/16 v18, 0x8a

    const-string v19, "Authorisation Response Code"

    const-string v22, "Code that defines the disposition of a message"

    move-object v14, v2

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->AUTHORISATION_RESPONSE_CODE_0x8A:Lorg/jpos/emv/EMVStandardTagType;

    .line 160
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PROPRIETARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDiscreteDataLength;

    const/4 v15, -0x1

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDiscreteDataLength;-><init>(II)V

    .line 163
    const v15, 0xbf0c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v79

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDiscreteByteLength;

    move-object/from16 v80, v2

    move-object/from16 v81, v3

    const/16 v2, 0xb

    const/16 v3, 0x8

    invoke-direct {v15, v3, v2}, Lorg/jpos/emv/EMVTagType$VariableDiscreteByteLength;-><init>(II)V

    const-string v54, "BANK_IDENTIFIER_CODE_0x5F54"

    const/16 v55, 0x20

    const/16 v56, 0x5f54

    const-string v57, "Bank Identifier Code (BIC)"

    const-string v58, "Uniquely identifies a bank as defined in ISO 9362."

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v62, v79

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->BANK_IDENTIFIER_CODE_0x5F54:Lorg/jpos/emv/EMVStandardTagType;

    .line 165
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0xfc

    const/4 v15, 0x1

    invoke-direct {v3, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 169
    move-object/from16 v82, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "CARD_RISK_MANAGEMENT_DATA_OBJECT_LIST_1_0x8C"

    const/16 v55, 0x21

    const/16 v56, 0x8c

    const-string v57, "Card Risk Management Data Object List 1 (CDOL1)"

    const-string v58, "List of data objects (tag and length) to be passed to the ICC in the first GENERATE AC command"

    move-object/from16 v53, v2

    move-object/from16 v61, v3

    move-object/from16 v62, v30

    move-object/from16 v63, v13

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->CARD_RISK_MANAGEMENT_DATA_OBJECT_LIST_1_0x8C:Lorg/jpos/emv/EMVStandardTagType;

    .line 171
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0xfc

    const/4 v15, 0x1

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 175
    move-object/from16 v83, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "CARD_RISK_MANAGEMENT_DATA_OBJECT_LIST_2_0x8D"

    const/16 v55, 0x22

    const/16 v56, 0x8d

    const-string v57, "Card Risk Management Data Object List 2 (CDOL2)"

    const-string v58, "List of data objects (tag and length) to be passed to the ICC in the second GENERATE AC command"

    move-object/from16 v53, v3

    move-object/from16 v61, v13

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->CARD_RISK_MANAGEMENT_DATA_OBJECT_LIST_2_0x8D:Lorg/jpos/emv/EMVStandardTagType;

    .line 177
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0x1a

    const/4 v15, 0x2

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 179
    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v84, v3

    const/16 v3, 0x1a

    invoke-direct {v14, v15, v3}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "CARDHOLDER_NAME_0x5F20"

    const/16 v55, 0x23

    const/16 v56, 0x5f20

    const-string v57, "Cardholder Name"

    const-string v58, "Indicates cardholder name according to ISO 7813"

    move-object/from16 v53, v2

    move-object/from16 v61, v13

    move-object/from16 v63, v14

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->CARDHOLDER_NAME_0x5F20:Lorg/jpos/emv/EMVStandardTagType;

    .line 181
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0x1b

    const/16 v15, 0x2d

    invoke-direct {v13, v14, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 186
    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    const/16 v15, 0x1b

    move-object/from16 v85, v2

    const/16 v2, 0x2d

    invoke-direct {v14, v15, v2}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "CARDHOLDER_NAME_EXTENDED_0x9F0B"

    const/16 v55, 0x24

    const v56, 0x9f0b

    const-string v57, "Cardholder Name Extended"

    const-string v58, "Indicates the whole cardholder name when greater than 26 characters using the same coding convention as in ISO 7813"

    move-object/from16 v53, v3

    move-object/from16 v61, v13

    move-object/from16 v63, v14

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->CARDHOLDER_NAME_EXTENDED_0x9F0B:Lorg/jpos/emv/EMVStandardTagType;

    .line 187
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0xa

    const/16 v15, 0xfc

    invoke-direct {v13, v14, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 189
    move-object/from16 v86, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v14, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "CARDHOLDER_VERIFICATION_METHOD_LIST_0x8E"

    const/16 v55, 0x25

    const/16 v56, 0x8e

    const-string v57, "Cardholder Verification Method (CVM) List"

    const-string v58, "Identifies a method of verification of the cardholder supported by the application"

    move-object/from16 v53, v2

    move-object/from16 v61, v13

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->CARDHOLDER_VERIFICATION_METHOD_LIST_0x8E:Lorg/jpos/emv/EMVStandardTagType;

    .line 191
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x3

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 194
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "CARDHOLDER_VERIFICATION_METHOD_CVM_RESULTS_0x9F34"

    const/16 v17, 0x26

    const v18, 0x9f34

    const-string v19, "Cardholder Verification Method (CVM) Results"

    const-string v22, "Indicates the results of the last CVM performed"

    move-object v14, v3

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->CARDHOLDER_VERIFICATION_METHOD_CVM_RESULTS_0x9F34:Lorg/jpos/emv/EMVStandardTagType;

    .line 195
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 197
    move-object/from16 v87, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v3, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "CERTIFICATION_AUTHORITY_PUBLIC_KEY_INDEX_0x8F"

    const/16 v55, 0x27

    const/16 v56, 0x8f

    const-string v57, "Certification Authority Public Key Index"

    const-string v58, "Identifies the certification authority\u2019s public key in conjunction with the RID"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->CERTIFICATION_AUTHORITY_PUBLIC_KEY_INDEX_0x8F:Lorg/jpos/emv/EMVStandardTagType;

    .line 198
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x1

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 201
    move-object/from16 v88, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "CERTIFICATION_AUTHORITY_PUBLIC_KEY_INDEX_0x9F22"

    const/16 v17, 0x28

    const v18, 0x9f22

    const-string v19, "Certification Authority Public Key Index"

    const-string v22, "Identifies the certification authority\u2019s public key in conjunction with the RID"

    move-object v14, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->CERTIFICATION_AUTHORITY_PUBLIC_KEY_INDEX_0x9F22:Lorg/jpos/emv/EMVStandardTagType;

    .line 203
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 205
    move-object/from16 v89, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v16, "COMMAND_TEMPLATE_0x83"

    const/16 v17, 0x29

    const/16 v18, 0x83

    const-string v19, "Command Template"

    const-string v22, "Identifies the data field of a command message"

    move-object/from16 v90, v2

    move v2, v14

    move-object v14, v13

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->COMMAND_TEMPLATE_0x83:Lorg/jpos/emv/EMVStandardTagType;

    .line 207
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 209
    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "CRYPTOGRAM_INFORMATION_DATA_0x9F27"

    const/16 v43, 0x2a

    const v44, 0x9f27

    const-string v45, "Cryptogram Information Data"

    const-string v46, "Indicates the type of cryptogram and the actions to be performed by the terminal"

    move-object/from16 v41, v3

    move-object/from16 v49, v14

    move-object/from16 v51, v2

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->CRYPTOGRAM_INFORMATION_DATA_0x9F27:Lorg/jpos/emv/EMVStandardTagType;

    .line 210
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 213
    move-object/from16 v92, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v3, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "DATA_AUTHENTICATION_CODE_0x9F45"

    const/16 v17, 0x2b

    const v18, 0x9f45

    const-string v19, "Data Authentication Code"

    const-string v22, "An issuer assigned value that is retained by the terminal during the verification process of the Signed Static Application Data"

    move-object v14, v2

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->DATA_AUTHENTICATION_CODE_0x9F45:Lorg/jpos/emv/EMVStandardTagType;

    .line 214
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v93, v2

    const/4 v2, 0x5

    const/16 v15, 0x10

    invoke-direct {v14, v2, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 216
    const/16 v16, 0x6f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v94, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v2, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "DEDICATED_FILE_NAME_0x84"

    const/16 v43, 0x2c

    const/16 v44, 0x84

    const-string v45, "Dedicated File (DF) Name"

    const-string v46, "Identifies the name of the DF as described in ISO/IEC 7816-4"

    move-object/from16 v41, v3

    move-object/from16 v49, v14

    move-object/from16 v51, v13

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->DEDICATED_FILE_NAME_0x84:Lorg/jpos/emv/EMVStandardTagType;

    .line 217
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0x10

    const/4 v15, 0x5

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 219
    move-object/from16 v95, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "DIRECTORY_DEFINITION_FILE_NAME_0x9D"

    const/16 v55, 0x2d

    const/16 v56, 0x9d

    const-string v57, "Directory Definition File (DDF) Name"

    const-string v58, "Identifies the name of a DF associated with a directory"

    move-object/from16 v53, v2

    move-object/from16 v61, v13

    move-object/from16 v62, v34

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->DIRECTORY_DEFINITION_FILE_NAME_0x9D:Lorg/jpos/emv/EMVStandardTagType;

    .line 220
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0xfc

    const/4 v15, 0x1

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 222
    move-object/from16 v96, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "DIRECTORY_DISCRETIONARY_TEMPLATE_0x73"

    const/16 v55, 0x2e

    const/16 v56, 0x73

    const-string v57, "Directory Discretionary Template"

    const-string v58, "Issuer discretionary part of the directory according to ISO/IEC 7816-5"

    move-object/from16 v53, v3

    move-object/from16 v61, v13

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->DIRECTORY_DISCRETIONARY_TEMPLATE_0x73:Lorg/jpos/emv/EMVStandardTagType;

    .line 223
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0xfc

    const/4 v15, 0x1

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 227
    move-object/from16 v34, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "DYNAMIC_DATA_AUTHENTICATION_DATA_OBJECT_LIST_0x9F49"

    const/16 v55, 0x2f

    const v56, 0x9f49

    const-string v57, "Dynamic Data Authentication Data Object List (DDOL)"

    const-string v58, "List of data objects (tag and length) to be passed to the ICC in the INTERNAL AUTHENTICATE command"

    move-object/from16 v53, v2

    move-object/from16 v61, v13

    move-object/from16 v62, v30

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->DYNAMIC_DATA_AUTHENTICATION_DATA_OBJECT_LIST_0x9F49:Lorg/jpos/emv/EMVStandardTagType;

    .line 229
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0xde

    const/4 v15, 0x1

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 232
    const/16 v14, 0xa5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v98, v2

    const/16 v2, 0xde

    invoke-direct {v14, v15, v2}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v15, "FILE_CONTROL_INFORMATION_ISSUER_DISCRETIONARY_DATA_0xBF0C"

    const/16 v16, 0x30

    const v17, 0xbf0c

    const-string v18, "File Control Information (FCI) Issuer Discretionary Data"

    const-string v19, "Issuer discretionary part of the FCI"

    move-object v2, v14

    move-object v14, v3

    move-object/from16 v22, v13

    move-object/from16 v23, v97

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->FILE_CONTROL_INFORMATION_ISSUER_DISCRETIONARY_DATA_0xBF0C:Lorg/jpos/emv/EMVStandardTagType;

    .line 233
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v13, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 238
    const/16 v15, 0x6f

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "FILE_CONTROL_INFORMATION_PROPRIETARY_TEMPLATE_0xA5"

    const/16 v43, 0x31

    const/16 v44, 0xa5

    const-string v45, "File Control Information (FCI) Proprietary Template"

    const-string v46, "Identifies the data object proprietary to this specification in the FCI template according to ISO/IEC 7816-4"

    move-object/from16 v41, v2

    move-object/from16 v49, v13

    move-object/from16 v51, v15

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->FILE_CONTROL_INFORMATION_PROPRIETARY_TEMPLATE_0xA5:Lorg/jpos/emv/EMVStandardTagType;

    .line 240
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v99, v2

    const/4 v2, 0x1

    const/16 v14, 0xfc

    invoke-direct {v15, v2, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 242
    move-object/from16 v100, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v2, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v2, "FILE_CONTROL_INFORMATION_TEMPLATE_0x6F"

    const/16 v16, 0x32

    const/16 v17, 0x6f

    const-string v18, "File Control Information (FCI) Template"

    const-string v19, "Identifies the FCI template according to ISO/IEC 7816-4"

    move-object v14, v13

    move-object/from16 v22, v15

    move-object v15, v2

    move-object/from16 v23, v25

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->FILE_CONTROL_INFORMATION_TEMPLATE_0x6F:Lorg/jpos/emv/EMVStandardTagType;

    .line 243
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0x8

    const/4 v15, 0x2

    invoke-direct {v3, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 245
    move-object/from16 v101, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v15, "ICC_DYNAMIC_NUMBER_0x9F4C"

    const/16 v16, 0x33

    const v17, 0x9f4c

    const-string v18, "ICC Dynamic Number"

    const-string v19, "Time-variant number generated by the ICC, to be captured by the terminal"

    move-object v14, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->ICC_DYNAMIC_NUMBER_0x9F4C:Lorg/jpos/emv/EMVStandardTagType;

    .line 246
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v13, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 250
    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_CERTIFICATE_0x9F2D"

    const/16 v55, 0x34

    const v56, 0x9f2d

    const-string v57, "Integrated Circuit Card (ICC) PIN Encipherment Public Key Certificate"

    const-string v58, "ICC PIN Encipherment Public Key certified by the issuer"

    move-object/from16 v53, v3

    move-object/from16 v61, v13

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_CERTIFICATE_0x9F2D:Lorg/jpos/emv/EMVStandardTagType;

    .line 252
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v102, v3

    const/4 v3, 0x1

    const/4 v15, 0x3

    invoke-direct {v14, v3, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 255
    move-object/from16 v103, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableDiscreteByteLength;

    invoke-direct {v2, v3, v15}, Lorg/jpos/emv/EMVTagType$VariableDiscreteByteLength;-><init>(II)V

    const-string v54, "INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_EXPONENT_0x9F2E"

    const/16 v55, 0x35

    const v56, 0x9f2e

    const-string v57, "Integrated Circuit Card (ICC) PIN Encipherment Public Key Exponent"

    const-string v58, "ICC PIN Encipherment Public Key Exponent used for PIN encipherment"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_EXPONENT_0x9F2E:Lorg/jpos/emv/EMVStandardTagType;

    .line 256
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v3, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 260
    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_REMAINDER_0x9F2F"

    const/16 v55, 0x36

    const v56, 0x9f2f

    const-string v57, "Integrated Circuit Card (ICC) PIN Encipherment Public Key Remainder"

    const-string v58, "Remaining digits of the ICC PIN Encipherment Public Key Modulus"

    move-object/from16 v53, v2

    move-object/from16 v61, v3

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->INTEGRATED_CIRCUIT_CARD_PIN_ENCIPHERMENT_PUBLIC_KEY_REMAINDER_0x9F2F:Lorg/jpos/emv/EMVStandardTagType;

    .line 262
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 265
    move-object/from16 v104, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_CERTIFICATE_0x9F46"

    const/16 v55, 0x37

    const v56, 0x9f46

    const-string v57, "Integrated Circuit Card (ICC) Public Key Certificate"

    const-string v58, "ICC Public Key certified by the issuer"

    move-object/from16 v53, v3

    move-object/from16 v61, v14

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_CERTIFICATE_0x9F46:Lorg/jpos/emv/EMVStandardTagType;

    .line 267
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v105, v3

    const/4 v3, 0x1

    const/4 v15, 0x3

    invoke-direct {v14, v3, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 270
    move-object/from16 v106, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v3, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_EXPONENT_0x9F47"

    const/16 v55, 0x38

    const v56, 0x9f47

    const-string v57, "Integrated Circuit Card (ICC) Public Key Exponent"

    const-string v58, "ICC Public Key Exponent used for the verification of the Signed Dynamic Application Data"

    move-object/from16 v53, v2

    move-object/from16 v61, v14

    move-object/from16 v63, v13

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_EXPONENT_0x9F47:Lorg/jpos/emv/EMVStandardTagType;

    .line 272
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v13, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 275
    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_REMAINDER_0x9F48"

    const/16 v55, 0x39

    const v56, 0x9f48

    const-string v57, "Integrated Circuit Card (ICC) Public Key Remainder"

    const-string v58, "Remaining digits of the ICC Public Key Modulus"

    move-object/from16 v53, v3

    move-object/from16 v61, v13

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->INTEGRATED_CIRCUIT_CARD_PUBLIC_KEY_REMAINDER_0x9F48:Lorg/jpos/emv/EMVStandardTagType;

    .line 277
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/16 v14, 0x8

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 279
    move-object/from16 v107, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v3, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "INTERFACE_DEVICE_IFD_SERIAL_NUMBER_0x9F1E"

    const/16 v17, 0x3a

    const v18, 0x9f1e

    const-string v19, "Interface Device (IFD) Serial Number"

    const-string v22, "Unique and permanent serial number assigned to the IFD by the manufacturer"

    move-object v14, v13

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->INTERFACE_DEVICE_IFD_SERIAL_NUMBER_0x9F1E:Lorg/jpos/emv/EMVStandardTagType;

    .line 281
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v15, 0x22

    move-object/from16 v108, v13

    const/4 v13, 0x1

    invoke-direct {v14, v13, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 285
    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v109, v2

    const/16 v2, 0x22

    invoke-direct {v15, v13, v2}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "INTERNATIONAL_BANK_ACCOUNT_NUMBER_0x5F53"

    const/16 v43, 0x3b

    const/16 v44, 0x5f53

    const-string v45, "International Bank Account Number (IBAN)"

    const-string v46, "Uniquely identifies the account of a customer at a financial institution as defined in ISO 13616."

    move-object/from16 v41, v3

    move-object/from16 v49, v14

    move-object/from16 v50, v79

    move-object/from16 v51, v15

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->INTERNATIONAL_BANK_ACCOUNT_NUMBER_0x5F53:Lorg/jpos/emv/EMVStandardTagType;

    .line 287
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 290
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "ISSUER_ACTION_CODE_DEFAULT_0x9F0D"

    const/16 v55, 0x3c

    const v56, 0x9f0d

    const-string v57, "Issuer Action Code - Default"

    const-string v58, "Specifies the issuer\u2019s conditions that cause a transaction to be rejected if it might have been approved online, but the terminal is unable to process the transaction online"

    move-object/from16 v53, v2

    move-object/from16 v61, v13

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_ACTION_CODE_DEFAULT_0x9F0D:Lorg/jpos/emv/EMVStandardTagType;

    .line 291
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 295
    move-object/from16 v110, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "ISSUER_ACTION_CODE_DENIAL_0x9F0E"

    const/16 v55, 0x3d

    const v56, 0x9f0e

    const-string v57, "Issuer Action Code - Denial"

    const-string v58, "Specifies the issuer\u2019s conditions that cause the denial of a transaction without attempt to go online"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_ACTION_CODE_DENIAL_0x9F0E:Lorg/jpos/emv/EMVStandardTagType;

    .line 296
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 298
    move-object/from16 v111, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v13, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "ISSUER_ACTION_CODE_ONLINE_0x9F0F"

    const/16 v55, 0x3e

    const v56, 0x9f0f

    const-string v57, "Issuer Action Code - Online"

    const-string v58, "Specifies the issuer\u2019s conditions that cause a transaction to be transmitted online"

    move-object/from16 v53, v2

    move-object/from16 v61, v14

    move-object/from16 v63, v13

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_ACTION_CODE_ONLINE_0x9F0F:Lorg/jpos/emv/EMVStandardTagType;

    .line 299
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v112, v2

    const/4 v2, 0x1

    const/16 v15, 0x20

    invoke-direct {v14, v2, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 303
    move-object/from16 v113, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v2, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "ISSUER_APPLICATION_DATA_0x9F10"

    const/16 v43, 0x3f

    const v44, 0x9f10

    const-string v45, "Issuer Application Data"

    const-string v46, "Contains proprietary application data for transmission to the issuer in an online transaction."

    move-object/from16 v41, v13

    move-object/from16 v49, v14

    move-object/from16 v50, v52

    move-object/from16 v51, v3

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_APPLICATION_DATA_0x9F10:Lorg/jpos/emv/EMVStandardTagType;

    .line 305
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v14, 0x10

    const/16 v15, 0x8

    invoke-direct {v3, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 307
    move-object/from16 v114, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v15, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v15, "ISSUER_AUTHENTICATION_DATA_0x91"

    const/16 v16, 0x40

    const/16 v17, 0x91

    const-string v18, "Issuer Authentication Data"

    const-string v19, "Data sent to the ICC for online issuer authentication"

    move-object v14, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_AUTHENTICATION_DATA_0x91:Lorg/jpos/emv/EMVStandardTagType;

    .line 308
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 312
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "ISSUER_CODE_TABLE_INDEX_0x9F11"

    const/16 v43, 0x41

    const v44, 0x9f11

    const-string v45, "Issuer Code Table Index"

    const-string v46, "Indicates the code table according to ISO/IEC 8859 for displaying the Application Preferred Name"

    move-object/from16 v41, v3

    move-object/from16 v49, v13

    move-object/from16 v50, v97

    move-object/from16 v51, v14

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_CODE_TABLE_INDEX_0x9F11:Lorg/jpos/emv/EMVStandardTagType;

    .line 314
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 316
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v115, v3

    const/4 v3, 0x2

    invoke-direct {v15, v3}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "ISSUER_COUNTRY_CODE_0x5F28"

    const/16 v55, 0x42

    const/16 v56, 0x5f28

    const-string v57, "Issuer Country Code"

    const-string v58, "Indicates the country of the issuer according to ISO 3166"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_COUNTRY_CODE_0x5F28:Lorg/jpos/emv/EMVStandardTagType;

    .line 317
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 321
    move-object/from16 v116, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v13, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "ISSUER_COUNTRY_CODE_ALPHA_2_0x5F55"

    const/16 v43, 0x43

    const/16 v44, 0x5f55

    const-string v45, "Issuer Country Code (alpha2 format)"

    const-string v46, "Indicates the country of the issuer as defined in ISO 3166 (using a 2 character alphabetic code)"

    move-object/from16 v41, v3

    move-object/from16 v49, v14

    move-object/from16 v50, v79

    move-object/from16 v51, v13

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_COUNTRY_CODE_ALPHA_2_0x5F55:Lorg/jpos/emv/EMVStandardTagType;

    .line 322
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 326
    move-object/from16 v117, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v3, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "ISSUER_COUNTRY_CODE_ALPHA_3_0x5F56"

    const/16 v43, 0x44

    const/16 v44, 0x5f56

    const-string v45, "Issuer Country Code (alpha3 format)"

    const-string v46, "Indicates the country of the issuer as defined in ISO 3166 (using a 3 character alphabetic code)"

    move-object/from16 v41, v13

    move-object/from16 v49, v14

    move-object/from16 v51, v3

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_COUNTRY_CODE_ALPHA_3_0x5F56:Lorg/jpos/emv/EMVStandardTagType;

    .line 327
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x6

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 332
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v118, v13

    const/4 v13, 0x3

    invoke-direct {v15, v13}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "ISSUER_IDENTIFICATION_NUMBER_0x42"

    const/16 v43, 0x45

    const/16 v44, 0x42

    const-string v45, "Issuer Identification Number (IIN)"

    const-string v46, "The number that identifies the major industry and the card issuer and that forms the first part of the Primary Account Number (PAN)"

    move-object/from16 v41, v3

    move-object/from16 v49, v14

    move-object/from16 v51, v15

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_IDENTIFICATION_NUMBER_0x42:Lorg/jpos/emv/EMVStandardTagType;

    .line 333
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 336
    move-object/from16 v119, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "ISSUER_PUBLIC_KEY_CERTIFICATE_0x90"

    const/16 v55, 0x46

    const/16 v56, 0x90

    const-string v57, "Issuer Public Key Certificate"

    const-string v58, "Issuer public key certified by a certification authority"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_PUBLIC_KEY_CERTIFICATE_0x90:Lorg/jpos/emv/EMVStandardTagType;

    .line 338
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v120, v13

    const/4 v13, 0x1

    const/4 v15, 0x3

    invoke-direct {v14, v13, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 341
    move-object/from16 v121, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v13, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "ISSUER_PUBLIC_KEY_EXPONENT_0x9F32"

    const/16 v55, 0x47

    const v56, 0x9f32

    const-string v57, "Issuer Public Key Exponent"

    const-string v58, "Issuer public key exponent used for the verification of the Signed Static Application Data and the ICC Public Key Certificate"

    move-object/from16 v53, v3

    move-object/from16 v61, v14

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_PUBLIC_KEY_EXPONENT_0x9F32:Lorg/jpos/emv/EMVStandardTagType;

    .line 342
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v13, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 344
    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "ISSUER_PUBLIC_KEY_REMAINDER_0x92"

    const/16 v55, 0x48

    const/16 v56, 0x92

    const-string v57, "Issuer Public Key Remainder"

    const-string v58, "Remaining digits of the Issuer Public Key Modulus"

    move-object/from16 v53, v2

    move-object/from16 v61, v13

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_PUBLIC_KEY_REMAINDER_0x92:Lorg/jpos/emv/EMVStandardTagType;

    .line 346
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/16 v15, 0x105

    move-object/from16 v122, v2

    const/4 v2, 0x1

    invoke-direct {v14, v2, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 348
    const/16 v15, 0x71

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v123, v3

    const/16 v3, 0x105

    invoke-direct {v15, v2, v3}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "ISSUER_SCRIPT_COMMAND_0x86"

    const/16 v43, 0x49

    const/16 v44, 0x86

    const-string v45, "Issuer Script Command"

    const-string v46, "Contains a command for transmission to the ICC"

    move-object/from16 v41, v13

    move-object/from16 v49, v14

    move-object/from16 v51, v15

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_SCRIPT_COMMAND_0x86:Lorg/jpos/emv/EMVStandardTagType;

    .line 349
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x4

    invoke-direct {v3, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 351
    const/16 v15, 0x71

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "ISSUER_SCRIPT_IDENTIFIER_0x9F18"

    const/16 v55, 0x4a

    const v56, 0x9f18

    const-string v57, "Issuer Script Identifier"

    const-string v58, "Identification of the Issuer Script"

    move-object/from16 v53, v2

    move-object/from16 v61, v3

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_SCRIPT_IDENTIFIER_0x9F18:Lorg/jpos/emv/EMVStandardTagType;

    .line 352
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->CONSTRUCTED:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 357
    move-object/from16 v124, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v16, "ISSUER_SCRIPT_TEMPLATE_1_0x71"

    const/16 v17, 0x4b

    const/16 v18, 0x71

    const-string v19, "Issuer Script Template 1"

    const-string v22, "Contains proprietary issuer data for transmission to the ICC before the second GENERATE AC command"

    move-object v14, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_SCRIPT_TEMPLATE_1_0x71:Lorg/jpos/emv/EMVStandardTagType;

    .line 359
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->CONSTRUCTED:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 364
    move-object/from16 v125, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v16, "ISSUER_SCRIPT_TEMPLATE_2_0x72"

    const/16 v17, 0x4c

    const/16 v18, 0x72

    const-string v19, "Issuer Script Template 2"

    const-string v22, "Contains proprietary issuer data for transmission to the ICC after the second GENERATE AC command"

    move-object v14, v2

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_SCRIPT_TEMPLATE_2_0x72:Lorg/jpos/emv/EMVStandardTagType;

    .line 366
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 369
    move-object/from16 v126, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "ISSUER_URL_0x5F50"

    const/16 v43, 0x4d

    const/16 v44, 0x5f50

    const-string v45, "Issuer URL"

    const-string v46, "The URL provides the location of the Issuer\u2019s Library Server on the Internet."

    move-object/from16 v41, v3

    move-object/from16 v49, v14

    move-object/from16 v50, v79

    move-object/from16 v51, v2

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->ISSUER_URL_0x5F50:Lorg/jpos/emv/EMVStandardTagType;

    .line 371
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 374
    move-object/from16 v127, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v128, v13

    const/16 v13, 0x8

    invoke-direct {v3, v15, v13}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "LANGUAGE_PREFERENCE_0x5F2D"

    const/16 v43, 0x4e

    const/16 v44, 0x5f2d

    const-string v45, "Language Preference"

    const-string v46, "1-4 languages stored in order of preference, each represented by 2 alphabetical characters according to ISO 639"

    move-object/from16 v41, v2

    move-object/from16 v49, v14

    move-object/from16 v50, v97

    move-object/from16 v51, v3

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->LANGUAGE_PREFERENCE_0x5F2D:Lorg/jpos/emv/EMVStandardTagType;

    .line 375
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 378
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "LAST_ONLINE_APPLICATION_TRANSACTION_COUNTER_REGISTER_0x9F13"

    const/16 v17, 0x4f

    const v18, 0x9f13

    const-string v19, "Last Online Application Transaction Counter (ATC) Register"

    const-string v22, "ATC value of the last transaction that went online"

    move-object v14, v3

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->LAST_ONLINE_APPLICATION_TRANSACTION_COUNTER_REGISTER_0x9F13:Lorg/jpos/emv/EMVStandardTagType;

    .line 379
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 381
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v129, v3

    const/4 v3, 0x2

    invoke-direct {v15, v3}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "LOG_ENTRY_0x9F4D"

    const/16 v43, 0x50

    const v44, 0x9f4d

    const-string v45, "Log Entry"

    const-string v46, "Provides the SFI of the Transaction Log file and its number of records"

    move-object/from16 v41, v13

    move-object/from16 v49, v14

    move-object/from16 v50, v79

    move-object/from16 v51, v15

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->LOG_ENTRY_0x9F4D:Lorg/jpos/emv/EMVStandardTagType;

    .line 382
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 386
    move-object/from16 v79, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v16, "LOG_FORMAT_0x9F4F"

    const/16 v17, 0x51

    const v18, 0x9f4f

    const-string v19, "Log Format"

    const-string v22, "List (in tag and length format) of data objects representing the logged data elements that are passed to the terminal when a transaction log record is read"

    move-object v14, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->LOG_FORMAT_0x9F4F:Lorg/jpos/emv/EMVStandardTagType;

    .line 388
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 391
    move-object/from16 v130, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v3, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "LOWER_CONSECUTIVE_OFFLINE_LIMIT_0x9F14"

    const/16 v55, 0x52

    const v56, 0x9f14

    const-string v57, "Lower Consecutive Offline Limit"

    const-string v58, "Issuer-specified preference for the maximum number of consecutive offline transactions for this ICC application allowed in a terminal with online capability"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v62, v30

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->LOWER_CONSECUTIVE_OFFLINE_LIMIT_0x9F14:Lorg/jpos/emv/EMVStandardTagType;

    .line 392
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x4

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 397
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "MERCHANT_CATEGORY_CODE_0x9F15"

    const/16 v17, 0x53

    const v18, 0x9f15

    const-string v19, "Merchant Category Code"

    const-string v22, "Classifies the type of business being done by the merchant, represented according to ISO 8583:1993 for Card Acceptor Business Code"

    move-object/from16 v24, v14

    move-object v14, v3

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->MERCHANT_CATEGORY_CODE_0x9F15:Lorg/jpos/emv/EMVStandardTagType;

    .line 398
    new-instance v131, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/16 v14, 0xf

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 400
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/16 v15, 0xf

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "MERCHANT_IDENTIFIER_0x9F16"

    const/16 v17, 0x54

    const v18, 0x9f16

    const-string v19, "Merchant Identifier"

    const-string v22, "When concatenated with the Acquirer Identifier, uniquely identifies a given merchant"

    move-object/from16 v24, v14

    move-object/from16 v14, v131

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v131, Lorg/jpos/emv/EMVStandardTagType;->MERCHANT_IDENTIFIER_0x9F16:Lorg/jpos/emv/EMVStandardTagType;

    .line 402
    new-instance v132, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 405
    move-object/from16 v133, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v16, "MERCHANT_NAME_AND_LOCATION_0x9F4E"

    const/16 v17, 0x55

    const v18, 0x9f4e

    const-string v19, "Merchant Name and Location"

    const-string v22, "Indicates the name and location of the merchant"

    move-object/from16 v14, v132

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v132, Lorg/jpos/emv/EMVStandardTagType;->MERCHANT_NAME_AND_LOCATION_0x9F4E:Lorg/jpos/emv/EMVStandardTagType;

    .line 407
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 409
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "PERSONAL_IDENTIFICATION_NUMBER_TRY_COUNTER_0x9F17"

    const/16 v17, 0x56

    const v18, 0x9f17

    const-string v19, "Personal Identification Number (PIN) Try Counter"

    const-string v22, "Number of PIN tries remaining"

    move-object/from16 v24, v14

    move-object v14, v3

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->PERSONAL_IDENTIFICATION_NUMBER_TRY_COUNTER_0x9F17:Lorg/jpos/emv/EMVStandardTagType;

    .line 410
    new-instance v134, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 413
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "POINT_OF_SERVICE_POS_ENTRY_MODE_0x9F39"

    const/16 v17, 0x57

    const v18, 0x9f39

    const-string v19, "Point-of-Service (POS) Entry Mode"

    const-string v22, "Indicates the method by which the PAN was entered, according to the first two digits of the ISO 8583:1987 POS Entry Mode"

    move-object/from16 v24, v14

    move-object/from16 v14, v134

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v134, Lorg/jpos/emv/EMVStandardTagType;->POINT_OF_SERVICE_POS_ENTRY_MODE_0x9F39:Lorg/jpos/emv/EMVStandardTagType;

    .line 414
    new-instance v135, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 419
    move-object/from16 v136, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "PROCESSING_OPTIONS_DATA_OBJECT_LIST_0x9F38"

    const/16 v43, 0x58

    const v44, 0x9f38

    const-string v45, "Processing Options Data Object List (PDOL)"

    const-string v46, "Contains a list of terminal resident data objects (tags and lengths) needed by the ICC in processing the GET PROCESSING OPTIONS command"

    move-object/from16 v41, v135

    move-object/from16 v49, v14

    move-object/from16 v50, v97

    move-object/from16 v51, v3

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v135, Lorg/jpos/emv/EMVStandardTagType;->PROCESSING_OPTIONS_DATA_OBJECT_LIST_0x9F38:Lorg/jpos/emv/EMVStandardTagType;

    .line 421
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v137, v13

    const/4 v13, 0x1

    const/16 v14, 0xfc

    invoke-direct {v15, v13, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 426
    move-object/from16 v138, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v13, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v13, "READ_RECORD_RESPONSE_MESSAGE_TEMPLATE_0x70"

    const/16 v16, 0x59

    const/16 v17, 0x70

    const-string v18, "READ RECORD Response Message Template"

    const-string v19, "Contains the contents of the record read. (Mandatory for SFIs 1-10. Response messages for SFIs 11-30 are outside the scope of EMV, but may use template \'70\')"

    move-object v14, v3

    move-object/from16 v22, v15

    move-object v15, v13

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->READ_RECORD_RESPONSE_MESSAGE_TEMPLATE_0x70:Lorg/jpos/emv/EMVStandardTagType;

    .line 427
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v13, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 432
    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v16, "RESPONSE_MESSAGE_TEMPLATE_FORMAT_1_0x80"

    const/16 v17, 0x5a

    const/16 v18, 0x80

    const-string v19, "Response Message Template Format 1"

    const-string v22, "Contains the data objects (without tags and lengths) returned by the ICC in response to a command"

    move-object v14, v2

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->RESPONSE_MESSAGE_TEMPLATE_FORMAT_1_0x80:Lorg/jpos/emv/EMVStandardTagType;

    .line 434
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 439
    move-object/from16 v139, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v16, "RESPONSE_MESSAGE_TEMPLATE_FORMAT_2_0x77"

    const/16 v17, 0x5b

    const/16 v18, 0x77

    const-string v19, "Response Message Template Format 2"

    const-string v22, "Contains the data objects (with tags and lengths) returned by the ICC in response to a command"

    move-object v14, v13

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->RESPONSE_MESSAGE_TEMPLATE_FORMAT_2_0x77:Lorg/jpos/emv/EMVStandardTagType;

    .line 441
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 443
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v140, v13

    const/4 v13, 0x2

    invoke-direct {v15, v13}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "SERVICE_CODE_0x5F30"

    const/16 v55, 0x5c

    const/16 v56, 0x5f30

    const-string v57, "Service Code"

    const-string v58, "Service code as defined in ISO/IEC 7813 for track 1 and track 2"

    move-object/from16 v53, v2

    move-object/from16 v61, v14

    move-object/from16 v63, v15

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->SERVICE_CODE_0x5F30:Lorg/jpos/emv/EMVStandardTagType;

    .line 444
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 449
    move-object/from16 v141, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v42, "SHORT_FILE_IDENTIFIER_0x88"

    const/16 v43, 0x5d

    const/16 v44, 0x88

    const-string v45, "Short File Identifier (SFI)"

    const-string v46, "Identifies the AEF referenced in commands related to a given ADF or DDF. It is a binary data object having a value in the range 1 to 30 and with the three high order bits set to zero."

    move-object/from16 v41, v13

    move-object/from16 v49, v14

    move-object/from16 v51, v2

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->SHORT_FILE_IDENTIFIER_0x88:Lorg/jpos/emv/EMVStandardTagType;

    .line 450
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v47, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v48, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 453
    move-object/from16 v97, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v42, "SIGNED_DYNAMIC_APPLICATION_DATA_0x9F4B"

    const/16 v43, 0x5e

    const v44, 0x9f4b

    const-string v45, "Signed Dynamic Application Data"

    const-string v46, "Digital signature on critical application parameters for DDA or CDA"

    move-object/from16 v41, v2

    move-object/from16 v49, v14

    move-object/from16 v50, v52

    move-object/from16 v51, v13

    invoke-direct/range {v41 .. v51}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->SIGNED_DYNAMIC_APPLICATION_DATA_0x9F4B:Lorg/jpos/emv/EMVStandardTagType;

    .line 455
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 458
    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "SIGNED_STATIC_APPLICATION_DATA_0x93"

    const/16 v55, 0x5f

    const/16 v56, 0x93

    const-string v57, "Signed Static Application Data"

    const-string v58, "Digital signature on critical application parameters for SDA"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->SIGNED_STATIC_APPLICATION_DATA_0x93:Lorg/jpos/emv/EMVStandardTagType;

    .line 460
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->PROPRIETARY:Lorg/jpos/tlv/TLVDataFormat;

    sget-object v61, Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableDataLength;->INSTANCE:Lorg/jpos/emv/EMVTagType$DataLength;

    .line 465
    sget-object v63, Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableByteLength;->INSTANCE:Lorg/jpos/emv/EMVTagType$ByteLength;

    const-string v54, "STATIC_DATA_AUTHENTICATION_TAG_LIST_0x9F4A"

    const/16 v55, 0x60

    const v56, 0x9f4a

    const-string v57, "Static Data Authentication Tag List"

    const-string v58, "List of tags of primitive data objects defined in this specification whose value fields are to be included in the Signed Static or Dynamic Application Data"

    move-object/from16 v53, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->STATIC_DATA_AUTHENTICATION_TAG_LIST_0x9F4A:Lorg/jpos/emv/EMVStandardTagType;

    .line 468
    new-instance v42, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x3

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 470
    move-object/from16 v43, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TERMINAL_CAPABILITIES_0x9F33"

    const/16 v17, 0x61

    const v18, 0x9f33

    const-string v19, "Terminal Capabilities"

    const-string v22, "Indicates the card data input, CVM, and security capabilities of the terminal"

    move-object/from16 v14, v42

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v42, Lorg/jpos/emv/EMVStandardTagType;->TERMINAL_CAPABILITIES_0x9F33:Lorg/jpos/emv/EMVStandardTagType;

    .line 472
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x3

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 474
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "TERMINAL_COUNTRY_CODE_0x9F1A"

    const/16 v17, 0x62

    const v18, 0x9f1a

    const-string v19, "Terminal Country Code"

    const-string v22, "Indicates the country of the terminal, represented according to ISO 3166"

    move-object/from16 v24, v14

    move-object v14, v2

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TERMINAL_COUNTRY_CODE_0x9F1A:Lorg/jpos/emv/EMVStandardTagType;

    .line 476
    new-instance v44, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x4

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 478
    move-object/from16 v45, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TERMINAL_FLOOR_LIMIT_0x9F1B"

    const/16 v17, 0x63

    const v18, 0x9f1b

    const-string v19, "Terminal Floor Limit"

    const-string v22, "Indicates the floor limit in the terminal in conjunction with the AID"

    move-object/from16 v14, v44

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v44, Lorg/jpos/emv/EMVStandardTagType;->TERMINAL_FLOOR_LIMIT_0x9F1B:Lorg/jpos/emv/EMVStandardTagType;

    .line 480
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/16 v14, 0x8

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 482
    move-object/from16 v46, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TERMINAL_IDENTIFICATION_0x9F1C"

    const/16 v17, 0x64

    const v18, 0x9f1c

    const-string v19, "Terminal Identification"

    const-string v22, "Designates the unique location of a terminal at a merchant"

    move-object v14, v2

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TERMINAL_IDENTIFICATION_0x9F1C:Lorg/jpos/emv/EMVStandardTagType;

    .line 483
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v47, v2

    const/4 v2, 0x1

    const/16 v14, 0x8

    invoke-direct {v15, v2, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 485
    move-object/from16 v48, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v2, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v2, "TERMINAL_RISK_MANAGEMENT_DATA_0x9F1D"

    const/16 v16, 0x65

    const v17, 0x9f1d

    const-string v18, "Terminal Risk Management Data"

    const-string v19, "Application-specific value used by the card for risk management purposes"

    move-object v14, v13

    move-object/from16 v22, v15

    move-object v15, v2

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->TERMINAL_RISK_MANAGEMENT_DATA_0x9F1D:Lorg/jpos/emv/EMVStandardTagType;

    .line 487
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v3, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 491
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    const/4 v14, 0x1

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TERMINAL_TYPE_0x9F35"

    const/16 v17, 0x66

    const v18, 0x9f35

    const-string v19, "Terminal Type"

    const-string v22, "Indicates the environment of the terminal, its communications capability, and its operational control"

    move-object v14, v2

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TERMINAL_TYPE_0x9F35:Lorg/jpos/emv/EMVStandardTagType;

    .line 493
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x5

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 495
    move-object/from16 v49, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TERMINAL_VERIFICATION_RESULTS_0x95"

    const/16 v17, 0x67

    const/16 v18, 0x95

    const-string v19, "Terminal Verification Results"

    const-string v22, "Status of the different functions as seen from the terminal"

    move-object v14, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->TERMINAL_VERIFICATION_RESULTS_0x95:Lorg/jpos/emv/EMVStandardTagType;

    .line 496
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 499
    move-object/from16 v50, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v3, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "TRACK_1_DISCRETIONARY_DATA_0x9F1F"

    const/16 v55, 0x68

    const v56, 0x9f1f

    const-string v57, "Track 1 Discretionary Data"

    const-string v58, "Discretionary part of track 1 according to ISO/IEC 7813"

    move-object/from16 v53, v2

    move-object/from16 v61, v14

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TRACK_1_DISCRETIONARY_DATA_0x9F1F:Lorg/jpos/emv/EMVStandardTagType;

    .line 501
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->COMPRESSED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 504
    move-object/from16 v51, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v15, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "TRACK_2_DISCRETIONARY_DATA_0x9F20"

    const/16 v55, 0x69

    const v56, 0x9f20

    const-string v57, "Track 2 Discretionary Data"

    const-string v58, "Discretionary part of track 2 according to ISO/IEC 7813"

    move-object/from16 v53, v3

    move-object/from16 v61, v14

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->TRACK_2_DISCRETIONARY_DATA_0x9F20:Lorg/jpos/emv/EMVStandardTagType;

    .line 506
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v52, v3

    const/4 v3, 0x1

    const/16 v15, 0x13

    invoke-direct {v14, v3, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 509
    move-object/from16 v142, v13

    new-instance v13, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v13, v3, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "TRACK_2_EQUIVALENT_DATA_0x57"

    const/16 v55, 0x6a

    const/16 v56, 0x57

    const-string v57, "Track 2 Equivalent Data"

    const-string v58, "Contains the data elements of track 2 according to ISO/IEC 7813, excluding start sentinel, end sentinel, and Longitudinal Redundancy Check (LRC), as follows:"

    move-object/from16 v53, v2

    move-object/from16 v61, v14

    move-object/from16 v63, v13

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TRACK_2_EQUIVALENT_DATA_0x57:Lorg/jpos/emv/EMVStandardTagType;

    .line 511
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v13, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/16 v14, 0x14

    invoke-direct {v13, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 513
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TRANSACTION_CERTIFICATE_HASH_VALUE_0x98"

    const/16 v17, 0x6b

    const/16 v18, 0x98

    const-string v19, "Transaction Certificate (TC) Hash Value"

    const-string v22, "Result of a hash function specified in Book 2, Annex B3.1"

    move-object v14, v3

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v13

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_CERTIFICATE_HASH_VALUE_0x98:Lorg/jpos/emv/EMVStandardTagType;

    .line 514
    new-instance v13, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v64, v3

    const/4 v3, 0x1

    const/16 v15, 0xfc

    invoke-direct {v14, v3, v15}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 518
    move-object/from16 v143, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v3, v15}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v54, "TRANSACTION_CERTIFICATE_DATA_OBJECT_LIST_0x97"

    const/16 v55, 0x6c

    const/16 v56, 0x97

    const-string v57, "Transaction Certificate Data Object List (TDOL)"

    const-string v58, "List of data objects (tag and length) to be used by the terminal in generating the TC Hash Value"

    move-object/from16 v53, v13

    move-object/from16 v61, v14

    move-object/from16 v63, v2

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v13, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_CERTIFICATE_DATA_OBJECT_LIST_0x97:Lorg/jpos/emv/EMVStandardTagType;

    .line 520
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x3

    invoke-direct {v3, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 522
    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TRANSACTION_CURRENCY_CODE_0x5F2A"

    const/16 v17, 0x6d

    const/16 v18, 0x5f2a

    const-string v19, "Transaction Currency Code"

    const-string v22, "Indicates the currency code of the transaction according to ISO 4217"

    move-object v14, v2

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_CURRENCY_CODE_0x5F2A:Lorg/jpos/emv/EMVStandardTagType;

    .line 524
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x1

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 527
    move-object/from16 v144, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TRANSACTION_CURRENCY_EXPONENT_0x5F36"

    const/16 v17, 0x6e

    const/16 v18, 0x5f36

    const-string v19, "Transaction Currency Exponent"

    const-string v22, "Indicates the implied position of the decimal point from the right of the transaction amount represented according to ISO 4217"

    move-object v14, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_CURRENCY_EXPONENT_0x5F36:Lorg/jpos/emv/EMVStandardTagType;

    .line 528
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC_DATE_YYMMDD:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x6

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 530
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "TRANSACTION_DATE_0x9A"

    const/16 v17, 0x6f

    const/16 v18, 0x9a

    const-string v19, "Transaction Date"

    const-string v22, "Local date that the transaction was authorised"

    move-object/from16 v24, v14

    move-object v14, v2

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_DATE_0x9A:Lorg/jpos/emv/EMVStandardTagType;

    .line 531
    new-instance v145, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 535
    move-object/from16 v91, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    invoke-direct {v2, v14, v14}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v16, "TRANSACTION_PERSONAL_IDENTIFICATION_NUMBER_PIN_DATA_0x99"

    const/16 v17, 0x70

    const/16 v18, 0x99

    const-string v19, "Transaction Personal Identification Number (PIN) Data"

    const-string v22, "Data entered by the cardholder for the purpose of the PIN verification"

    move-object/from16 v14, v145

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v145, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_PERSONAL_IDENTIFICATION_NUMBER_PIN_DATA_0x99:Lorg/jpos/emv/EMVStandardTagType;

    .line 537
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x3

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 540
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "TRANSACTION_REFERENCE_CURRENCY_CODE_0x9F3C"

    const/16 v17, 0x71

    const v18, 0x9f3c

    const-string v19, "Transaction Reference Currency Code"

    const-string v22, "Code defining the common currency used by the terminal in case the Transaction Currency Code is different from the Application Currency Code"

    move-object/from16 v24, v14

    move-object v14, v2

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_REFERENCE_CURRENCY_CODE_0x9F3C:Lorg/jpos/emv/EMVStandardTagType;

    .line 541
    new-instance v146, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x1

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 545
    move-object/from16 v147, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TRANSACTION_REFERENCE_CURRENCY_EXPONENT_0x9F3D"

    const/16 v17, 0x72

    const v18, 0x9f3d

    const-string v19, "Transaction Reference Currency Exponent"

    const-string v22, "Indicates the implied position of the decimal point from the right of the transaction amount, with the Transaction Reference Currency Code represented according to ISO 4217"

    move-object/from16 v14, v146

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v146, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_REFERENCE_CURRENCY_EXPONENT_0x9F3D:Lorg/jpos/emv/EMVStandardTagType;

    .line 547
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$VariableDataLength;

    move-object/from16 v148, v3

    const/4 v3, 0x4

    const/16 v14, 0x8

    invoke-direct {v15, v3, v14}, Lorg/jpos/emv/EMVTagType$VariableDataLength;-><init>(II)V

    .line 549
    new-instance v14, Lorg/jpos/emv/EMVTagType$VariableByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x2

    invoke-direct {v14, v15, v3}, Lorg/jpos/emv/EMVTagType$VariableByteLength;-><init>(II)V

    const-string v15, "TRANSACTION_SEQUENCE_COUNTER_0x9F41"

    const/16 v3, 0x73

    const v17, 0x9f41

    const-string v18, "Transaction Sequence Counter"

    const-string v19, "Counter maintained by the terminal that is incremented by one for each transaction"

    move-object/from16 v24, v14

    move-object v14, v2

    move-object/from16 v22, v16

    move/from16 v16, v3

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_SEQUENCE_COUNTER_0x9F41:Lorg/jpos/emv/EMVStandardTagType;

    .line 551
    new-instance v3, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 553
    move-object/from16 v149, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "TRANSACTION_STATUS_INFORMATION_0x9B"

    const/16 v17, 0x74

    const/16 v18, 0x9b

    const-string v19, "Transaction Status Information"

    const-string v22, "Indicates the functions performed in a transaction"

    move-object v14, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_STATUS_INFORMATION_0x9B:Lorg/jpos/emv/EMVStandardTagType;

    .line 554
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC_TIME_HHMMSS:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x6

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 556
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "TRANSACTION_TIME_0x9F21"

    const/16 v17, 0x75

    const v18, 0x9f21

    const-string v19, "Transaction Time"

    const-string v22, "Local time that the transaction was authorised"

    move-object/from16 v24, v14

    move-object v14, v2

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_TIME_0x9F21:Lorg/jpos/emv/EMVStandardTagType;

    .line 557
    new-instance v150, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 563
    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    move-object/from16 v16, v15

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v15, "TRANSACTION_TYPE_0x9C"

    const/16 v17, 0x76

    const/16 v18, 0x9c

    const-string v19, "Transaction Type"

    const-string v22, "Indicates the type of financial transaction, represented by the first two digits of the ISO 8583:1987 Processing Code. The actual values to be used for the Transaction Type data element are defined by the relevant payment system"

    move-object/from16 v24, v14

    move-object/from16 v14, v150

    move-object/from16 v23, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v150, Lorg/jpos/emv/EMVStandardTagType;->TRANSACTION_TYPE_0x9C:Lorg/jpos/emv/EMVStandardTagType;

    .line 564
    new-instance v151, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v20, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v21, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v15, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v14, 0x4

    invoke-direct {v15, v14}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 566
    move-object/from16 v152, v2

    new-instance v2, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v2, v14}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v16, "UNPREDICTABLE_NUMBER_0x9F37"

    const/16 v17, 0x77

    const v18, 0x9f37

    const-string v19, "Unpredictable Number"

    const-string v22, "Value to provide variability and uniqueness to the generation of a cryptogram"

    move-object/from16 v14, v151

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v151, Lorg/jpos/emv/EMVStandardTagType;->UNPREDICTABLE_NUMBER_0x9F37:Lorg/jpos/emv/EMVStandardTagType;

    .line 568
    new-instance v2, Lorg/jpos/emv/EMVStandardTagType;

    sget-object v59, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    sget-object v60, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    new-instance v14, Lorg/jpos/emv/EMVTagType$FixedDataLength;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/jpos/emv/EMVTagType$FixedDataLength;-><init>(I)V

    .line 573
    move-object/from16 v16, v3

    new-instance v3, Lorg/jpos/emv/EMVTagType$FixedByteLength;

    invoke-direct {v3, v15}, Lorg/jpos/emv/EMVTagType$FixedByteLength;-><init>(I)V

    const-string v54, "UPPER_CONSECUTIVE_OFFLINE_LIMIT_0x9F23"

    const/16 v55, 0x78

    const v56, 0x9f23

    const-string v57, "Upper Consecutive Offline Limit"

    const-string v58, "Issuer-specified preference for the maximum number of consecutive offline transactions for this ICC application allowed in a terminal without online capability"

    move-object/from16 v53, v2

    move-object/from16 v61, v14

    move-object/from16 v63, v3

    invoke-direct/range {v53 .. v63}, Lorg/jpos/emv/EMVStandardTagType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V

    sput-object v2, Lorg/jpos/emv/EMVStandardTagType;->UPPER_CONSECUTIVE_OFFLINE_LIMIT_0x9F23:Lorg/jpos/emv/EMVStandardTagType;

    .line 32
    const/16 v3, 0x79

    new-array v3, v3, [Lorg/jpos/emv/EMVStandardTagType;

    const/4 v14, 0x0

    aput-object v11, v3, v14

    const/4 v11, 0x1

    aput-object v0, v3, v11

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v26, v3, v0

    const/4 v0, 0x7

    aput-object v27, v3, v0

    const/16 v0, 0x8

    aput-object v39, v3, v0

    const/16 v0, 0x9

    aput-object v10, v3, v0

    const/16 v0, 0xa

    aput-object v31, v3, v0

    const/16 v0, 0xb

    aput-object v32, v3, v0

    const/16 v0, 0xc

    aput-object v8, v3, v0

    const/16 v0, 0xd

    aput-object v5, v3, v0

    const/16 v0, 0xe

    aput-object v12, v3, v0

    const/16 v0, 0xf

    aput-object v65, v3, v0

    const/16 v0, 0x10

    aput-object v6, v3, v0

    const/16 v0, 0x11

    aput-object v67, v3, v0

    const/16 v0, 0x12

    aput-object v68, v3, v0

    const/16 v0, 0x13

    aput-object v69, v3, v0

    const/16 v0, 0x14

    aput-object v66, v3, v0

    const/16 v0, 0x15

    aput-object v70, v3, v0

    const/16 v0, 0x16

    aput-object v71, v3, v0

    const/16 v0, 0x17

    aput-object v72, v3, v0

    const/16 v0, 0x18

    aput-object v73, v3, v0

    const/16 v0, 0x19

    aput-object v77, v3, v0

    const/16 v0, 0x1a

    aput-object v74, v3, v0

    const/16 v0, 0x1b

    aput-object v75, v3, v0

    const/16 v0, 0x1c

    aput-object v76, v3, v0

    const/16 v0, 0x1d

    aput-object v78, v3, v0

    const/16 v0, 0x1e

    aput-object v81, v3, v0

    const/16 v0, 0x1f

    aput-object v80, v3, v0

    const/16 v0, 0x20

    aput-object v82, v3, v0

    const/16 v0, 0x21

    aput-object v83, v3, v0

    const/16 v0, 0x22

    aput-object v84, v3, v0

    const/16 v0, 0x23

    aput-object v85, v3, v0

    const/16 v0, 0x24

    aput-object v86, v3, v0

    const/16 v0, 0x25

    aput-object v90, v3, v0

    const/16 v0, 0x26

    aput-object v87, v3, v0

    const/16 v0, 0x27

    aput-object v88, v3, v0

    const/16 v0, 0x28

    aput-object v89, v3, v0

    const/16 v0, 0x29

    aput-object v94, v3, v0

    const/16 v0, 0x2a

    aput-object v92, v3, v0

    const/16 v0, 0x2b

    aput-object v93, v3, v0

    const/16 v0, 0x2c

    aput-object v95, v3, v0

    const/16 v0, 0x2d

    aput-object v96, v3, v0

    const/16 v0, 0x2e

    aput-object v34, v3, v0

    const/16 v0, 0x2f

    aput-object v98, v3, v0

    const/16 v0, 0x30

    aput-object v100, v3, v0

    const/16 v0, 0x31

    aput-object v99, v3, v0

    const/16 v0, 0x32

    aput-object v101, v3, v0

    const/16 v0, 0x33

    aput-object v103, v3, v0

    const/16 v0, 0x34

    aput-object v102, v3, v0

    const/16 v0, 0x35

    aput-object v106, v3, v0

    const/16 v0, 0x36

    aput-object v104, v3, v0

    const/16 v0, 0x37

    aput-object v105, v3, v0

    const/16 v0, 0x38

    aput-object v109, v3, v0

    const/16 v0, 0x39

    aput-object v107, v3, v0

    const/16 v0, 0x3a

    aput-object v108, v3, v0

    const/16 v0, 0x3b

    aput-object v113, v3, v0

    const/16 v0, 0x3c

    aput-object v110, v3, v0

    const/16 v0, 0x3d

    aput-object v111, v3, v0

    const/16 v0, 0x3e

    aput-object v112, v3, v0

    const/16 v0, 0x3f

    aput-object v114, v3, v0

    const/16 v0, 0x40

    aput-object v121, v3, v0

    const/16 v0, 0x41

    aput-object v115, v3, v0

    const/16 v0, 0x42

    aput-object v116, v3, v0

    const/16 v0, 0x43

    aput-object v117, v3, v0

    const/16 v0, 0x44

    aput-object v118, v3, v0

    const/16 v0, 0x45

    aput-object v119, v3, v0

    const/16 v0, 0x46

    aput-object v120, v3, v0

    const/16 v0, 0x47

    aput-object v123, v3, v0

    const/16 v0, 0x48

    aput-object v122, v3, v0

    const/16 v0, 0x49

    aput-object v128, v3, v0

    const/16 v0, 0x4a

    aput-object v124, v3, v0

    const/16 v0, 0x4b

    aput-object v125, v3, v0

    const/16 v0, 0x4c

    aput-object v126, v3, v0

    const/16 v0, 0x4d

    aput-object v127, v3, v0

    const/16 v0, 0x4e

    aput-object v138, v3, v0

    const/16 v0, 0x4f

    aput-object v129, v3, v0

    const/16 v0, 0x50

    aput-object v79, v3, v0

    const/16 v0, 0x51

    aput-object v130, v3, v0

    const/16 v0, 0x52

    aput-object v137, v3, v0

    const/16 v0, 0x53

    aput-object v133, v3, v0

    const/16 v0, 0x54

    aput-object v131, v3, v0

    const/16 v0, 0x55

    aput-object v132, v3, v0

    const/16 v0, 0x56

    aput-object v136, v3, v0

    const/16 v0, 0x57

    aput-object v134, v3, v0

    const/16 v0, 0x58

    aput-object v135, v3, v0

    const/16 v0, 0x59

    aput-object v48, v3, v0

    const/16 v0, 0x5a

    aput-object v139, v3, v0

    const/16 v0, 0x5b

    aput-object v140, v3, v0

    const/16 v0, 0x5c

    aput-object v141, v3, v0

    const/16 v0, 0x5d

    aput-object v97, v3, v0

    const/16 v0, 0x5e

    aput-object v41, v3, v0

    const/16 v0, 0x5f

    aput-object v46, v3, v0

    const/16 v0, 0x60

    aput-object v43, v3, v0

    aput-object v42, v3, v33

    const/16 v0, 0x62

    aput-object v45, v3, v0

    const/16 v0, 0x63

    aput-object v44, v3, v0

    const/16 v0, 0x64

    aput-object v47, v3, v0

    const/16 v0, 0x65

    aput-object v142, v3, v0

    const/16 v0, 0x66

    aput-object v49, v3, v0

    const/16 v0, 0x67

    aput-object v50, v3, v0

    const/16 v0, 0x68

    aput-object v51, v3, v0

    const/16 v0, 0x69

    aput-object v52, v3, v0

    const/16 v0, 0x6a

    aput-object v143, v3, v0

    const/16 v0, 0x6b

    aput-object v64, v3, v0

    const/16 v0, 0x6c

    aput-object v13, v3, v0

    const/16 v0, 0x6d

    aput-object v144, v3, v0

    const/16 v0, 0x6e

    aput-object v148, v3, v0

    const/16 v0, 0x6f

    aput-object v91, v3, v0

    aput-object v145, v3, v29

    const/16 v0, 0x71

    aput-object v147, v3, v0

    const/16 v0, 0x72

    aput-object v146, v3, v0

    const/16 v0, 0x73

    aput-object v149, v3, v0

    const/16 v0, 0x74

    aput-object v16, v3, v0

    const/16 v0, 0x75

    aput-object v152, v3, v0

    const/16 v0, 0x76

    aput-object v150, v3, v0

    aput-object v151, v3, v40

    const/16 v0, 0x78

    aput-object v2, v3, v0

    sput-object v3, Lorg/jpos/emv/EMVStandardTagType;->$VALUES:[Lorg/jpos/emv/EMVStandardTagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/jpos/emv/EMVTagType$DataSource;Lorg/jpos/tlv/TLVDataFormat;Lorg/jpos/emv/EMVTagType$DataLength;Ljava/lang/Integer;Lorg/jpos/emv/EMVTagType$ByteLength;)V
    .locals 1
    .param p3, "tagNumber"    # I
    .param p4, "tagName"    # Ljava/lang/String;
    .param p5, "tagDescription"    # Ljava/lang/String;
    .param p6, "source"    # Lorg/jpos/emv/EMVTagType$DataSource;
    .param p7, "format"    # Lorg/jpos/tlv/TLVDataFormat;
    .param p8, "dataLength"    # Lorg/jpos/emv/EMVTagType$DataLength;
    .param p9, "template"    # Ljava/lang/Integer;
    .param p10, "byteLength"    # Lorg/jpos/emv/EMVTagType$ByteLength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jpos/emv/EMVTagType$DataSource;",
            "Lorg/jpos/tlv/TLVDataFormat;",
            "Lorg/jpos/emv/EMVTagType$DataLength;",
            "Ljava/lang/Integer;",
            "Lorg/jpos/emv/EMVTagType$ByteLength;",
            ")V"
        }
    .end annotation

    .line 587
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 588
    iput p3, p0, Lorg/jpos/emv/EMVStandardTagType;->tagNumber:I

    .line 589
    iput-object p4, p0, Lorg/jpos/emv/EMVStandardTagType;->tagShortDescription:Ljava/lang/String;

    .line 590
    iput-object p5, p0, Lorg/jpos/emv/EMVStandardTagType;->tagDescription:Ljava/lang/String;

    .line 591
    iput-object p6, p0, Lorg/jpos/emv/EMVStandardTagType;->source:Lorg/jpos/emv/EMVTagType$DataSource;

    .line 592
    iput-object p7, p0, Lorg/jpos/emv/EMVStandardTagType;->format:Lorg/jpos/tlv/TLVDataFormat;

    .line 593
    iput-object p9, p0, Lorg/jpos/emv/EMVStandardTagType;->template:Ljava/lang/Integer;

    .line 594
    iput-object p8, p0, Lorg/jpos/emv/EMVStandardTagType;->dataLength:Lorg/jpos/emv/EMVTagType$DataLength;

    .line 595
    iput-object p10, p0, Lorg/jpos/emv/EMVStandardTagType;->byteLength:Lorg/jpos/emv/EMVTagType$ByteLength;

    .line 596
    if-eqz p3, :cond_1

    .line 597
    invoke-static {}, Lorg/jpos/emv/EMVStandardTagType$MapHolder;->access$000()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 602
    invoke-static {}, Lorg/jpos/emv/EMVStandardTagType$MapHolder;->access$000()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 598
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal attempt to add duplicate EMVTagType with tagNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ". Enum: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 600
    invoke-virtual {p0}, Lorg/jpos/emv/EMVStandardTagType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 604
    :cond_1
    :goto_0
    return-void
.end method

.method public static forCode(I)Lorg/jpos/emv/EMVStandardTagType;
    .locals 3
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/emv/UnknownTagNumberException;
        }
    .end annotation

    .line 612
    invoke-static {}, Lorg/jpos/emv/EMVStandardTagType$MapHolder;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/emv/EMVStandardTagType;

    .line 613
    .local v0, "tagType":Lorg/jpos/emv/EMVStandardTagType;
    if-eqz v0, :cond_0

    .line 616
    return-object v0

    .line 614
    :cond_0
    new-instance v1, Lorg/jpos/emv/UnknownTagNumberException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/emv/UnknownTagNumberException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forHexCode(Ljava/lang/String;)Lorg/jpos/emv/EMVStandardTagType;
    .locals 1
    .param p0, "hexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/emv/UnknownTagNumberException;
        }
    .end annotation

    .line 620
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/jpos/emv/EMVStandardTagType;->forCode(I)Lorg/jpos/emv/EMVStandardTagType;

    move-result-object v0

    return-object v0
.end method

.method public static isProprietaryTag(I)Z
    .locals 2
    .param p0, "code"    # I

    .line 607
    invoke-static {}, Lorg/jpos/emv/EMVStandardTagType$MapHolder;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/emv/EMVTagType;

    .line 608
    .local v0, "tagType":Lorg/jpos/emv/EMVTagType;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 624
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lorg/jpos/emv/EMVStandardTagType;->APPLICATION_CRYPTOGRAM_0x9F26:Lorg/jpos/emv/EMVStandardTagType;

    invoke-virtual {v1}, Lorg/jpos/emv/EMVStandardTagType;->getTagNumberHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/jpos/emv/EMVStandardTagType;->getTagNumberLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 627
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lorg/jpos/emv/EMVStandardTagType;->CARD_RISK_MANAGEMENT_DATA_OBJECT_LIST_1_0x8C:Lorg/jpos/emv/EMVStandardTagType;

    invoke-virtual {v1}, Lorg/jpos/emv/EMVStandardTagType;->getTagNumberHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 628
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/jpos/emv/EMVStandardTagType;->getTagNumberLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 629
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/emv/EMVStandardTagType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/jpos/emv/EMVStandardTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/emv/EMVStandardTagType;

    return-object v0
.end method

.method public static values()[Lorg/jpos/emv/EMVStandardTagType;
    .locals 1

    .line 32
    sget-object v0, Lorg/jpos/emv/EMVStandardTagType;->$VALUES:[Lorg/jpos/emv/EMVStandardTagType;

    invoke-virtual {v0}, [Lorg/jpos/emv/EMVStandardTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/emv/EMVStandardTagType;

    return-object v0
.end method


# virtual methods
.method public getByteLength()Lorg/jpos/emv/EMVTagType$ByteLength;
    .locals 1

    .line 690
    iget-object v0, p0, Lorg/jpos/emv/EMVStandardTagType;->byteLength:Lorg/jpos/emv/EMVTagType$ByteLength;

    return-object v0
.end method

.method public getDataLength()Lorg/jpos/emv/EMVTagType$DataLength;
    .locals 1

    .line 685
    iget-object v0, p0, Lorg/jpos/emv/EMVStandardTagType;->dataLength:Lorg/jpos/emv/EMVTagType$DataLength;

    return-object v0
.end method

.method public getDataType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/emv/ProprietaryFormatException;
        }
    .end annotation

    .line 694
    sget-object v0, Lorg/jpos/emv/EMVStandardTagType$1;->$SwitchMap$org$jpos$tlv$TLVDataFormat:[I

    iget-object v1, p0, Lorg/jpos/emv/EMVStandardTagType;->format:Lorg/jpos/tlv/TLVDataFormat;

    invoke-virtual {v1}, Lorg/jpos/tlv/TLVDataFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 702
    const-class v0, Ljava/lang/String;

    return-object v0

    .line 700
    :pswitch_0
    const-class v0, [Lorg/jpos/emv/EMVTag;

    return-object v0

    .line 698
    :pswitch_1
    const-class v0, [B

    return-object v0

    .line 696
    :pswitch_2
    new-instance v0, Lorg/jpos/emv/ProprietaryFormatException;

    iget-object v1, p0, Lorg/jpos/emv/EMVStandardTagType;->tagShortDescription:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jpos/emv/ProprietaryFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFormat()Lorg/jpos/tlv/TLVDataFormat;
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/jpos/emv/EMVStandardTagType;->format:Lorg/jpos/tlv/TLVDataFormat;

    return-object v0
.end method

.method public getSource()Lorg/jpos/emv/EMVTagType$DataSource;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/jpos/emv/EMVStandardTagType;->source:Lorg/jpos/emv/EMVTagType$DataSource;

    return-object v0
.end method

.method public getTagDescription()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Lorg/jpos/emv/EMVStandardTagType;->tagDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTagNumber()I
    .locals 1

    .line 633
    iget v0, p0, Lorg/jpos/emv/EMVStandardTagType;->tagNumber:I

    return v0
.end method

.method public getTagNumberBytes()[B
    .locals 1

    .line 649
    iget v0, p0, Lorg/jpos/emv/EMVStandardTagType;->tagNumber:I

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->int2byte(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getTagNumberHex()Ljava/lang/String;
    .locals 1

    .line 645
    iget v0, p0, Lorg/jpos/emv/EMVStandardTagType;->tagNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagNumberLength()I
    .locals 2

    .line 641
    iget v0, p0, Lorg/jpos/emv/EMVStandardTagType;->tagNumber:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTagShortDescription()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/jpos/emv/EMVStandardTagType;->tagShortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Lorg/jpos/emv/EMVTagType;
    .locals 2

    .line 680
    invoke-static {}, Lorg/jpos/emv/EMVStandardTagType$MapHolder;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/emv/EMVStandardTagType;->template:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/emv/EMVTagType;

    return-object v0
.end method

.method public isProprietaryFormat()Z
    .locals 2

    .line 673
    sget-object v0, Lorg/jpos/tlv/TLVDataFormat;->PROPRIETARY:Lorg/jpos/tlv/TLVDataFormat;

    iget-object v1, p0, Lorg/jpos/emv/EMVStandardTagType;->format:Lorg/jpos/tlv/TLVDataFormat;

    invoke-virtual {v0, v1}, Lorg/jpos/tlv/TLVDataFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProprietaryTag()Z
    .locals 1

    .line 637
    const/4 v0, 0x0

    return v0
.end method

.class public final enum Lorg/apache/sshd/common/util/io/der/ASN1Type;
.super Ljava/lang/Enum;
.source "ASN1Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/util/io/der/ASN1Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum ANY:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum BIT_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum BMP_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum BOOLEAN:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum ENUMERATED:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum GENERALIZED_TIME:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum GENERAL_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum GRAPHIC_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum IA5_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum INTEGER:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum ISO646_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum NULL:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum NUMERIC_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum OBJECT_IDENTIFIER:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum OCTET_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum PRINTABLE_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum REAL:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum RELATIVE_OID:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum SEQUENCE:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum SET:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum T61_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum UNIVERSAL_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum UTC_TIME:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final enum UTF8_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/util/io/der/ASN1Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum VIDEOTEX_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;


# instance fields
.field private final typeValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 31
    new-instance v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->ANY:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 32
    new-instance v1, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lorg/apache/sshd/common/util/io/der/ASN1Type;->BOOLEAN:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 33
    new-instance v3, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v5, "INTEGER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lorg/apache/sshd/common/util/io/der/ASN1Type;->INTEGER:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 34
    new-instance v5, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v7, "BIT_STRING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lorg/apache/sshd/common/util/io/der/ASN1Type;->BIT_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 35
    new-instance v7, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v9, "OCTET_STRING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lorg/apache/sshd/common/util/io/der/ASN1Type;->OCTET_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 36
    new-instance v9, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v11, "NULL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v9, Lorg/apache/sshd/common/util/io/der/ASN1Type;->NULL:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 37
    new-instance v11, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v13, "OBJECT_IDENTIFIER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v11, Lorg/apache/sshd/common/util/io/der/ASN1Type;->OBJECT_IDENTIFIER:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 38
    new-instance v13, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v15, "REAL"

    const/4 v14, 0x7

    const/16 v12, 0x9

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v13, Lorg/apache/sshd/common/util/io/der/ASN1Type;->REAL:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 39
    new-instance v15, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v14, "ENUMERATED"

    const/16 v10, 0x8

    const/16 v8, 0xa

    invoke-direct {v15, v14, v10, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v15, Lorg/apache/sshd/common/util/io/der/ASN1Type;->ENUMERATED:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 40
    new-instance v14, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v10, "RELATIVE_OID"

    const/16 v6, 0xd

    invoke-direct {v14, v10, v12, v6}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v14, Lorg/apache/sshd/common/util/io/der/ASN1Type;->RELATIVE_OID:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 41
    new-instance v10, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v12, "SEQUENCE"

    const/16 v4, 0x10

    invoke-direct {v10, v12, v8, v4}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v10, Lorg/apache/sshd/common/util/io/der/ASN1Type;->SEQUENCE:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 42
    new-instance v12, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v8, "SET"

    const/16 v2, 0xb

    const/16 v4, 0x11

    invoke-direct {v12, v8, v2, v4}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v12, Lorg/apache/sshd/common/util/io/der/ASN1Type;->SET:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 43
    new-instance v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v8, "NUMERIC_STRING"

    const/16 v4, 0xc

    const/16 v6, 0x12

    invoke-direct {v2, v8, v4, v6}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;->NUMERIC_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 44
    new-instance v8, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v4, "PRINTABLE_STRING"

    const/16 v6, 0x13

    move-object/from16 v17, v2

    const/16 v2, 0xd

    invoke-direct {v8, v4, v2, v6}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v8, Lorg/apache/sshd/common/util/io/der/ASN1Type;->PRINTABLE_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 45
    new-instance v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v4, "T61_STRING"

    const/16 v6, 0xe

    move-object/from16 v18, v8

    const/16 v8, 0x14

    invoke-direct {v2, v4, v6, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;->T61_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 46
    new-instance v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v6, "VIDEOTEX_STRING"

    const/16 v8, 0xf

    move-object/from16 v19, v2

    const/16 v2, 0x15

    invoke-direct {v4, v6, v8, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;->VIDEOTEX_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 47
    new-instance v6, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v8, "IA5_STRING"

    const/16 v2, 0x16

    move-object/from16 v20, v4

    const/16 v4, 0x10

    invoke-direct {v6, v8, v4, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v6, Lorg/apache/sshd/common/util/io/der/ASN1Type;->IA5_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 48
    new-instance v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v8, "GRAPHIC_STRING"

    const/16 v2, 0x19

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v4, v8, v6, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;->GRAPHIC_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 49
    new-instance v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v6, "ISO646_STRING"

    const/16 v8, 0x1a

    move-object/from16 v22, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;->ISO646_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 50
    new-instance v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v6, "GENERAL_STRING"

    const/16 v8, 0x1b

    move-object/from16 v23, v2

    const/16 v2, 0x13

    invoke-direct {v4, v6, v2, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;->GENERAL_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 51
    new-instance v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v6, "UTF8_STRING"

    move-object/from16 v24, v4

    const/16 v4, 0xc

    const/16 v8, 0x14

    invoke-direct {v2, v6, v8, v4}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;->UTF8_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 52
    new-instance v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v6, "UNIVERSAL_STRING"

    const/16 v8, 0x1c

    move-object/from16 v25, v2

    const/16 v2, 0x15

    invoke-direct {v4, v6, v2, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;->UNIVERSAL_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 53
    new-instance v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v6, "BMP_STRING"

    const/16 v8, 0x1e

    move-object/from16 v26, v4

    const/16 v4, 0x16

    invoke-direct {v2, v6, v4, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;->BMP_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 54
    new-instance v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v6, "UTC_TIME"

    const/16 v8, 0x17

    invoke-direct {v4, v6, v8, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;->UTC_TIME:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 55
    new-instance v6, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const-string v8, "GENERALIZED_TIME"

    move-object/from16 v27, v4

    const/16 v4, 0x18

    invoke-direct {v6, v8, v4, v4}, Lorg/apache/sshd/common/util/io/der/ASN1Type;-><init>(Ljava/lang/String;IB)V

    sput-object v6, Lorg/apache/sshd/common/util/io/der/ASN1Type;->GENERALIZED_TIME:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 30
    const/16 v8, 0x19

    new-array v8, v8, [Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const/16 v16, 0x0

    aput-object v0, v8, v16

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v10, v8, v0

    const/16 v0, 0xb

    aput-object v12, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v18, v8, v0

    const/16 v0, 0xe

    aput-object v19, v8, v0

    const/16 v0, 0xf

    aput-object v20, v8, v0

    const/16 v0, 0x10

    aput-object v21, v8, v0

    const/16 v0, 0x11

    aput-object v22, v8, v0

    const/16 v0, 0x12

    aput-object v23, v8, v0

    const/16 v0, 0x13

    aput-object v24, v8, v0

    const/16 v0, 0x14

    aput-object v25, v8, v0

    const/16 v0, 0x15

    aput-object v26, v8, v0

    const/16 v0, 0x16

    aput-object v2, v8, v0

    const/16 v0, 0x17

    aput-object v27, v8, v0

    aput-object v6, v8, v4

    sput-object v8, Lorg/apache/sshd/common/util/io/der/ASN1Type;->$VALUES:[Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 57
    const-class v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 58
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->VALUES:Ljava/util/Set;

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "typeVal"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-byte p3, p0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->typeValue:B

    .line 64
    return-void
.end method

.method public static fromDERValue(I)Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .locals 1
    .param p0, "value"    # I

    .line 98
    and-int/lit8 v0, p0, 0x1f

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->fromTypeValue(I)Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v0

    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 71
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    return-object v1

    .line 75
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 76
    .local v2, "t":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    return-object v2

    .line 79
    .end local v2    # "t":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    :cond_1
    goto :goto_0

    .line 81
    :cond_2
    return-object v1
.end method

.method public static fromTypeValue(I)Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .locals 4
    .param p0, "value"    # I

    .line 106
    const/4 v0, 0x0

    if-ltz p0, :cond_3

    const/16 v1, 0x1f

    if-le p0, v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/util/io/der/ASN1Type;->VALUES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 111
    .local v2, "t":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->getTypeValue()B

    move-result v3

    if-ne v3, p0, :cond_1

    .line 112
    return-object v2

    .line 114
    .end local v2    # "t":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    :cond_1
    goto :goto_0

    .line 116
    :cond_2
    return-object v0

    .line 107
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->$VALUES:[Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/util/io/der/ASN1Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/util/io/der/ASN1Type;

    return-object v0
.end method


# virtual methods
.method public getTypeValue()B
    .locals 1

    .line 67
    iget-byte v0, p0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->typeValue:B

    return v0
.end method

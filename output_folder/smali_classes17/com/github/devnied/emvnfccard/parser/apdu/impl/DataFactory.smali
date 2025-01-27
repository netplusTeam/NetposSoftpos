.class public final Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;
.super Ljava/lang/Object;
.source "DataFactory.java"


# static fields
.field public static final BCD_DATE:I = 0x1

.field public static final BCD_FORMAT:Ljava/lang/String; = "BCD_Format"

.field public static final CPCL_DATE:I = 0x2

.field public static final HALF_BYTE_SIZE:I = 0x4

.field public static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method

.method public static calculateCplcDate([B)Ljava/util/Date;
    .locals 9
    .param p0, "dateBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 88
    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 93
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget-byte v1, p0, v2

    if-nez v1, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 99
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 100
    .local v3, "currenctYear":I
    rem-int/lit8 v4, v3, 0xa

    sub-int v4, v3, v4

    .line 102
    .local v4, "startYearOfCurrentDecade":I
    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    mul-int/lit8 v5, v5, 0x64

    aget-byte v6, p0, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    .line 104
    .local v5, "days":I
    const/16 v6, 0x16e

    if-gt v5, v6, :cond_2

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 110
    .local v6, "calculatedDate":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 111
    aget-byte v0, p0, v0

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    add-int/2addr v0, v4

    .line 112
    .local v0, "year":I
    invoke-virtual {v6, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/4 v7, 0x6

    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 114
    :goto_0
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 115
    add-int/lit8 v0, v0, -0xa

    .line 116
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 117
    invoke-virtual {v6, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 118
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 105
    .end local v0    # "year":I
    .end local v6    # "calculatedDate":Ljava/util/Calendar;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid date (or are we parsing it wrong??)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    .end local v1    # "now":Ljava/util/Calendar;
    .end local v3    # "currenctYear":I
    .end local v4    # "startYearOfCurrentDecade":I
    .end local v5    # "days":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error! CLCP Date values consist always of exactly 2 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDate(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Ljava/util/Date;
    .locals 4
    .param p0, "pAnnotation"    # Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    .param p1, "pBit"    # Lfr/devnied/bitlib/BitUtils;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getDateStandard()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v2}, Lfr/devnied/bitlib/BitUtils;->getNextDate(ILjava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getDateStandard()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v1

    invoke-virtual {p1, v1}, Lfr/devnied/bitlib/BitUtils;->getNextByte(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->calculateCplcDate([B)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lfr/devnied/bitlib/BitUtils;->getNextDate(ILjava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0
.end method

.method private static getEnum(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;
    .locals 3
    .param p0, "pAnnotation"    # Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    .param p1, "pBit"    # Lfr/devnied/bitlib/BitUtils;

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "val":I
    :try_start_0
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v1

    invoke-virtual {p1, v1}, Lfr/devnied/bitlib/BitUtils;->getNextHexaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->isReadHexa()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 199
    goto :goto_1

    .line 197
    :catch_0
    move-exception v1

    .line 200
    :goto_1
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/devnied/emvnfccard/utils/EnumUtils;->getValue(ILjava/lang/Class;)Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;

    move-result-object v1

    return-object v1
.end method

.method private static getFloat(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Ljava/lang/Float;
    .locals 3
    .param p0, "pAnnotation"    # Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    .param p1, "pBit"    # Lfr/devnied/bitlib/BitUtils;

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "ret":Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BCD_Format"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v1

    invoke-virtual {p1, v1}, Lfr/devnied/bitlib/BitUtils;->getNextHexaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p0, p1}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->getInteger(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0
.end method

.method private static getInteger(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)I
    .locals 1
    .param p0, "pAnnotation"    # Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    .param p1, "pBit"    # Lfr/devnied/bitlib/BitUtils;

    .line 133
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lfr/devnied/bitlib/BitUtils;->getNextInteger(I)I

    move-result v0

    return v0
.end method

.method public static getObject(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Ljava/lang/Object;
    .locals 3
    .param p0, "pAnnotation"    # Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    .param p1, "pBit"    # Lfr/devnied/bitlib/BitUtils;

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 149
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-static {p0, p1}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->getInteger(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_0
    const-class v2, Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {p0, p1}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->getFloat(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_1
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-static {p0, p1}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->getString(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    const-class v2, Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    invoke-static {p0, p1}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->getDate(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    invoke-static {p0, p1}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->getEnum(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;

    move-result-object v0

    .line 160
    :cond_4
    :goto_0
    return-object v0
.end method

.method private static getString(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Ljava/lang/String;
    .locals 2
    .param p0, "pAnnotation"    # Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    .param p1, "pBit"    # Lfr/devnied/bitlib/BitUtils;

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "obj":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->isReadHexa()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v1

    invoke-virtual {p1, v1}, Lfr/devnied/bitlib/BitUtils;->getNextHexaString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v1

    invoke-virtual {p1, v1}, Lfr/devnied/bitlib/BitUtils;->getNextString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0
.end method

.class Lnet/sf/scuba/tlv/ASN1Util;
.super Ljava/lang/Object;
.source "ASN1Util.java"

# interfaces
.implements Lnet/sf/scuba/tlv/ASN1Constants;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final SDF:Ljava/lang/String; = "yyMMddhhmmss\'Z\'"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "net.sf.scuba"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/sf/scuba/tlv/ASN1Util;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static interpretPrimitiveValue(I[B)Ljava/lang/Object;
    .locals 5
    .param p0, "tag"    # I
    .param p1, "valueBytes"    # [B

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddhhmmss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Lnet/sf/scuba/tlv/TLVUtil;->getTagClass(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    return-object p1

    .line 55
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 79
    return-object p1

    .line 73
    :sswitch_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "pe":Ljava/text/ParseException;
    sget-object v2, Lnet/sf/scuba/tlv/ASN1Util;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Parse exception parsing UTC time"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    return-object p1

    .line 70
    .end local v1    # "pe":Ljava/text/ParseException;
    :sswitch_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 61
    :sswitch_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0xc -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method static tagToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "tag"    # I

    .line 84
    invoke-static {p0}, Lnet/sf/scuba/tlv/TLVUtil;->getTagClass(I)I

    move-result v0

    const-string v1, "\'"

    const-string v2, "\'0x"

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnet/sf/scuba/util/Hex;->intToHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-static {p0}, Lnet/sf/scuba/tlv/TLVUtil;->isPrimitive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    and-int/lit8 v0, p0, 0x1f

    packed-switch v0, :pswitch_data_0

    .line 122
    :pswitch_0
    goto :goto_0

    .line 118
    :pswitch_1
    const-string v0, "BMP_STRING"

    return-object v0

    .line 116
    :pswitch_2
    const-string v0, "UNIVERSAL_STRING"

    return-object v0

    .line 114
    :pswitch_3
    const-string v0, "GENERAL_STRING"

    return-object v0

    .line 112
    :pswitch_4
    const-string v0, "VISIBLE_STRING"

    return-object v0

    .line 122
    :pswitch_5
    const-string v0, "GENERAL_TIME"

    return-object v0

    .line 120
    :pswitch_6
    const-string v0, "UTC_TIME"

    return-object v0

    .line 110
    :pswitch_7
    const-string v0, "IA5_STRING"

    return-object v0

    .line 108
    :pswitch_8
    const-string v0, "T61_STRING"

    return-object v0

    .line 106
    :pswitch_9
    const-string v0, "PRINTABLE_STRING"

    return-object v0

    .line 104
    :pswitch_a
    const-string v0, "UTF_STRING"

    return-object v0

    .line 102
    :pswitch_b
    const-string v0, "REAL"

    return-object v0

    .line 100
    :pswitch_c
    const-string v0, "OBJECT_IDENTIFIER"

    return-object v0

    .line 98
    :pswitch_d
    const-string v0, "NULL"

    return-object v0

    .line 96
    :pswitch_e
    const-string v0, "OCTET_STRING"

    return-object v0

    .line 94
    :pswitch_f
    const-string v0, "BIT_STRING"

    return-object v0

    .line 92
    :pswitch_10
    const-string v0, "INTEGER"

    return-object v0

    .line 90
    :pswitch_11
    const-string v0, "BOOLEAN"

    return-object v0

    .line 125
    :cond_1
    and-int/lit8 v0, p0, 0x1f

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 131
    :sswitch_0
    const-string v0, "SET"

    return-object v0

    .line 129
    :sswitch_1
    const-string v0, "SEQUENCE"

    return-object v0

    .line 127
    :sswitch_2
    const-string v0, "ENUMERATED"

    return-object v0

    .line 135
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnet/sf/scuba/util/Hex;->intToHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

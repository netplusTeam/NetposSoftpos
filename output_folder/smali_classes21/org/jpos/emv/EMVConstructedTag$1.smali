.class synthetic Lorg/jpos/emv/EMVConstructedTag$1;
.super Ljava/lang/Object;
.source "EMVConstructedTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVConstructedTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jpos$tlv$TLVDataFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 127
    invoke-static {}, Lorg/jpos/tlv/TLVDataFormat;->values()[Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jpos/emv/EMVConstructedTag$1;->$SwitchMap$org$jpos$tlv$TLVDataFormat:[I

    :try_start_0
    sget-object v1, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    invoke-virtual {v1}, Lorg/jpos/tlv/TLVDataFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

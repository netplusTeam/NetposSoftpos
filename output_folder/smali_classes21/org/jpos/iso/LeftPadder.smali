.class public Lorg/jpos/iso/LeftPadder;
.super Ljava/lang/Object;
.source "LeftPadder.java"

# interfaces
.implements Lorg/jpos/iso/Padder;


# static fields
.field public static final ZERO_PADDER:Lorg/jpos/iso/LeftPadder;


# instance fields
.field private pad:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/jpos/iso/LeftPadder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lorg/jpos/iso/LeftPadder;-><init>(C)V

    sput-object v0, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0
    .param p1, "pad"    # C

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-char p1, p0, Lorg/jpos/iso/LeftPadder;->pad:C

    .line 49
    return-void
.end method


# virtual methods
.method public pad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v0, "padded":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 57
    .local v1, "len":I
    if-gt v1, p2, :cond_1

    .line 62
    sub-int v2, p2, v1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 64
    iget-char v3, p0, Lorg/jpos/iso/LeftPadder;->pad:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 59
    :cond_1
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data is too long. Max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unpad(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "paddedData"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 79
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lorg/jpos/iso/LeftPadder;->pad:C

    if-eq v2, v3, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const-string v2, ""

    return-object v2
.end method

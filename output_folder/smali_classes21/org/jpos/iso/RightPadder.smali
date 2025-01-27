.class public Lorg/jpos/iso/RightPadder;
.super Ljava/lang/Object;
.source "RightPadder.java"

# interfaces
.implements Lorg/jpos/iso/Padder;


# static fields
.field public static final SPACE_PADDER:Lorg/jpos/iso/RightPadder;


# instance fields
.field private pad:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/jpos/iso/RightPadder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/jpos/iso/RightPadder;-><init>(C)V

    sput-object v0, Lorg/jpos/iso/RightPadder;->SPACE_PADDER:Lorg/jpos/iso/RightPadder;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0
    .param p1, "pad"    # C

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-char p1, p0, Lorg/jpos/iso/RightPadder;->pad:C

    .line 49
    return-void
.end method


# virtual methods
.method public pad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 55
    .local v0, "len":I
    if-ge v0, p2, :cond_1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v1, "padded":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :goto_0
    if-ge v0, p2, :cond_0

    .line 59
    iget-char v2, p0, Lorg/jpos/iso/RightPadder;->pad:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    .end local v1    # "padded":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 63
    :cond_1
    if-gt v0, p2, :cond_2

    .line 66
    :goto_1
    return-object p1

    .line 64
    :cond_2
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data is too long. Max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unpad(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "paddedData"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 72
    .local v0, "len":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 74
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lorg/jpos/iso/RightPadder;->pad:C

    if-eq v2, v3, :cond_0

    .line 76
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 72
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    const-string v1, ""

    return-object v1
.end method

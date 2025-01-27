.class public Lorg/jpos/tlv/CharTagMapBuilder;
.super Ljava/lang/Object;
.source "CharTagMapBuilder.java"


# instance fields
.field protected lengthSize:Ljava/lang/Integer;

.field protected swapTagWithLength:Z

.field protected tagSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public build()Lorg/jpos/tlv/CharTagMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 83
    invoke-static {}, Lorg/jpos/tlv/CharTagMap;->getInstance()Lorg/jpos/tlv/CharTagMap;

    move-result-object v0

    .line 84
    .local v0, "tm":Lorg/jpos/tlv/CharTagMap;
    iget-object v1, p0, Lorg/jpos/tlv/CharTagMapBuilder;->tagSize:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jpos/tlv/CharTagMap;->setTagSize(I)V

    .line 87
    :cond_0
    iget-object v1, p0, Lorg/jpos/tlv/CharTagMapBuilder;->lengthSize:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jpos/tlv/CharTagMap;->setLengthSize(I)V

    .line 90
    :cond_1
    iget-boolean v1, p0, Lorg/jpos/tlv/CharTagMapBuilder;->swapTagWithLength:Z

    invoke-virtual {v0, v1}, Lorg/jpos/tlv/CharTagMap;->withTagLengthSwap(Z)V

    .line 92
    return-object v0
.end method

.method public withLengthSize(I)Lorg/jpos/tlv/CharTagMapBuilder;
    .locals 1
    .param p1, "size"    # I

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/CharTagMapBuilder;->lengthSize:Ljava/lang/Integer;

    .line 51
    return-object p0
.end method

.method public withTagLengthSwap(Z)Lorg/jpos/tlv/CharTagMapBuilder;
    .locals 0
    .param p1, "swap"    # Z

    .line 72
    iput-boolean p1, p0, Lorg/jpos/tlv/CharTagMapBuilder;->swapTagWithLength:Z

    .line 73
    return-object p0
.end method

.method public withTagSize(I)Lorg/jpos/tlv/CharTagMapBuilder;
    .locals 1
    .param p1, "size"    # I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/CharTagMapBuilder;->tagSize:Ljava/lang/Integer;

    .line 62
    return-object p0
.end method

.class public Lorg/jpos/tlv/TLVList$TLVListBuilder;
.super Ljava/lang/Object;
.source "TLVList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/tlv/TLVList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLVListBuilder"
.end annotation


# instance fields
.field private lengthSize:I

.field private tagSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/tlv/TLVList$TLVListBuilder;->tagSize:I

    .line 81
    iput v0, p0, Lorg/jpos/tlv/TLVList$TLVListBuilder;->lengthSize:I

    return-void
.end method

.method public static createInstance()Lorg/jpos/tlv/TLVList$TLVListBuilder;
    .locals 1

    .line 89
    new-instance v0, Lorg/jpos/tlv/TLVList$TLVListBuilder;

    invoke-direct {v0}, Lorg/jpos/tlv/TLVList$TLVListBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/jpos/tlv/TLVList;
    .locals 2

    .line 135
    new-instance v0, Lorg/jpos/tlv/TLVList;

    invoke-direct {v0}, Lorg/jpos/tlv/TLVList;-><init>()V

    .line 136
    .local v0, "tl":Lorg/jpos/tlv/TLVList;
    iget v1, p0, Lorg/jpos/tlv/TLVList$TLVListBuilder;->tagSize:I

    invoke-static {v0, v1}, Lorg/jpos/tlv/TLVList;->access$002(Lorg/jpos/tlv/TLVList;I)I

    .line 137
    iget v1, p0, Lorg/jpos/tlv/TLVList$TLVListBuilder;->lengthSize:I

    invoke-static {v0, v1}, Lorg/jpos/tlv/TLVList;->access$102(Lorg/jpos/tlv/TLVList;I)I

    .line 138
    return-object v0
.end method

.method public fixedLengthSize(I)Lorg/jpos/tlv/TLVList$TLVListBuilder;
    .locals 2
    .param p1, "lengthSize"    # I

    .line 119
    const-string v0, "The fixed length size must be greater than zero"

    if-lez p1, :cond_1

    .line 122
    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    .line 125
    iput p1, p0, Lorg/jpos/tlv/TLVList$TLVListBuilder;->lengthSize:I

    .line 126
    return-object p0

    .line 123
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public fixedTagSize(I)Lorg/jpos/tlv/TLVList$TLVListBuilder;
    .locals 2
    .param p1, "tagSize"    # I

    .line 102
    if-lez p1, :cond_0

    .line 105
    iput p1, p0, Lorg/jpos/tlv/TLVList$TLVListBuilder;->tagSize:I

    .line 106
    return-object p0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fixed tag size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

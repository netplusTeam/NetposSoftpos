.class abstract Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/ColognePhonetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CologneBuffer"
.end annotation


# instance fields
.field protected final data:[C

.field protected length:I

.field final synthetic this$0:Lorg/apache/commons/codec/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lorg/apache/commons/codec/language/ColognePhonetic;I)V
    .locals 1
    .param p2, "buffSize"    # I

    .line 213
    iput-object p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->this$0:Lorg/apache/commons/codec/language/ColognePhonetic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 214
    new-array v0, p2, [C

    iput-object v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->data:[C

    .line 215
    iput p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 216
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/language/ColognePhonetic;[C)V
    .locals 0
    .param p2, "data"    # [C

    .line 208
    iput-object p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->this$0:Lorg/apache/commons/codec/language/ColognePhonetic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 209
    iput-object p2, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->data:[C

    .line 210
    array-length p1, p2

    iput p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 211
    return-void
.end method


# virtual methods
.method protected abstract copyData(II)[C
.end method

.method public length()I
    .locals 1

    .line 221
    iget v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->copyData(II)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.class Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
.super Ljava/lang/Object;
.source "TLVInputState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/scuba/tlv/TLVInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TLStruct"
.end annotation


# instance fields
.field private length:I

.field private tag:I

.field final synthetic this$0:Lnet/sf/scuba/tlv/TLVInputState;

.field private valueBytesRead:I


# direct methods
.method public constructor <init>(Lnet/sf/scuba/tlv/TLVInputState;I)V
    .locals 2
    .param p2, "tag"    # I

    .line 191
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;-><init>(Lnet/sf/scuba/tlv/TLVInputState;III)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVInputState;III)V
    .locals 0
    .param p2, "tag"    # I
    .param p3, "length"    # I
    .param p4, "valueBytesRead"    # I

    .line 198
    iput-object p1, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->this$0:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p2, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->tag:I

    .line 200
    iput p3, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    .line 201
    iput p4, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    .line 202
    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVInputState;Lnet/sf/scuba/tlv/TLVInputState$TLStruct;)V
    .locals 3
    .param p2, "original"    # Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 195
    iget v0, p2, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->tag:I

    iget v1, p2, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    iget v2, p2, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    invoke-direct {p0, p1, v0, v1, v2}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;-><init>(Lnet/sf/scuba/tlv/TLVInputState;III)V

    .line 196
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 213
    iget v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 209
    iget v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->tag:I

    return v0
.end method

.method public getValueBytesProcessed()I
    .locals 1

    .line 217
    iget v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    return v0
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 205
    iput p1, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TLStruct "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateValueBytesProcessed(I)V
    .locals 1
    .param p1, "n"    # I

    .line 221
    iget v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    .line 222
    return-void
.end method

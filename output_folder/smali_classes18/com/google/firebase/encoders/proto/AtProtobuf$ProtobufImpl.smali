.class final Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;
.super Ljava/lang/Object;
.source "AtProtobuf.java"

# interfaces
.implements Lcom/google/firebase/encoders/proto/Protobuf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/encoders/proto/AtProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtobufImpl"
.end annotation


# instance fields
.field private final intEncoding:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

.field private final tag:I


# direct methods
.method constructor <init>(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "intEncoding"    # Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->tag:I

    .line 39
    iput-object p2, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->intEncoding:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 40
    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 44
    const-class v0, Lcom/google/firebase/encoders/proto/Protobuf;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 60
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/encoders/proto/Protobuf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 61
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/encoders/proto/Protobuf;

    .line 63
    .local v1, "that":Lcom/google/firebase/encoders/proto/Protobuf;
    iget v3, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->tag:I

    invoke-interface {v1}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->intEncoding:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 64
    invoke-interface {v1}, Lcom/google/firebase/encoders/proto/Protobuf;->intEncoding()Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 63
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 69
    iget v0, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->tag:I

    const v1, 0xde0d66

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->intEncoding:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 70
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->hashCode()I

    move-result v1

    const v2, 0x79ad669e

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public intEncoding()Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->intEncoding:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-object v0
.end method

.method public tag()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->tag:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@com.google.firebase.encoders.proto.Protobuf"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "intEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;->intEncoding:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

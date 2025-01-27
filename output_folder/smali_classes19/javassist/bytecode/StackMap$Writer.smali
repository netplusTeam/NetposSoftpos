.class public Ljavassist/bytecode/StackMap$Writer;
.super Ljava/lang/Object;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Writer"
.end annotation


# instance fields
.field private output:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/StackMap$Writer;->output:Ljava/io/ByteArrayOutputStream;

    .line 556
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 1

    .line 562
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toStackMap(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMap;
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 569
    new-instance v0, Ljavassist/bytecode/StackMap;

    iget-object v1, p0, Ljavassist/bytecode/StackMap$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/StackMap;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object v0
.end method

.method public write16bit(I)V
    .locals 2
    .param p1, "value"    # I

    .line 587
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Writer;->output:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 588
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Writer;->output:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 589
    return-void
.end method

.method public writeVerifyTypeInfo(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "data"    # I

    .line 578
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 579
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 580
    :cond_0
    invoke-virtual {p0, p2}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 581
    :cond_1
    return-void
.end method

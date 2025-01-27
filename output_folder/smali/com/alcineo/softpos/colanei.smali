.class public Lcom/alcineo/softpos/colanei;
.super Lcom/alcineo/softpos/noealic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/colanei$acileon;
    }
.end annotation


# static fields
.field private static final enolcai:B = 0x2t

.field private static final ocenlai:B = 0x3t


# instance fields
.field private final acileon:B

.field private final aoleinc:B

.field private noaceli:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/noealic;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alcineo/softpos/colanei;->noaceli:B

    return-void
.end method


# virtual methods
.method public native acileon(Lcom/alcineo/softpos/alicneo;)Lcom/alcineo/softpos/cnaolie;
.end method

.method public acileon(Ljava/nio/ByteBuffer;)Lcom/alcineo/softpos/cnaolie;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/oiencla;,
            Lcom/alcineo/softpos/aolenci;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    new-array v7, v1, [B

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/google/common/primitives/Shorts;->fromByteArray([B)S

    move-result v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    add-int/lit8 v11, v9, 0x3

    if-lt v10, v11, :cond_2

    new-array v9, v9, [B

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/primitives/Shorts;->fromByteArray([B)S

    move-result v11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    const/4 v12, 0x3

    if-ne p1, v12, :cond_1

    invoke-static {v10}, Lcom/alcineo/softpos/colanei$acileon;->acileon(Ljava/nio/ByteBuffer;)S

    move-result p1

    if-ne p1, v11, :cond_0

    new-instance p1, Lcom/alcineo/softpos/cenlaio;

    new-array v10, v1, [B

    const/4 v11, 0x0

    aput-byte v5, v10, v11

    const/4 v5, 0x1

    aput-byte v6, v10, v5

    new-array v1, v1, [B

    aput-byte v2, v1, v11

    aput-byte v4, v1, v5

    move-object v2, p1

    move-object v4, v10

    move-object v5, v1

    move-object v6, v7

    move-object v7, v0

    invoke-direct/range {v2 .. v9}, Lcom/alcineo/softpos/cenlaio;-><init>(B[B[B[B[BB[B)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/alcineo/softpos/aolenci;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid CRC, expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alcineo/softpos/aolenci;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/alcineo/softpos/aolenci;

    const-string v0, "Expected ETX, got an invalid byte."

    invoke-direct {p1, v0}, Lcom/alcineo/softpos/aolenci;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/alcineo/softpos/oiencla;

    invoke-direct {p1}, Lcom/alcineo/softpos/oiencla;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Lcom/alcineo/softpos/aolenci;

    const-string v0, "Expected STX, got an invalid byte."

    invoke-direct {p1, v0}, Lcom/alcineo/softpos/aolenci;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/alcineo/softpos/oiencla;

    invoke-direct {p1}, Lcom/alcineo/softpos/oiencla;-><init>()V

    throw p1
.end method

.method public native acileon()Ljava/lang/String;
.end method

.method public native acileon(Lcom/alcineo/softpos/cnaolie;)Ljava/nio/ByteBuffer;
.end method

.method public native aoleinc(Lcom/alcineo/softpos/cnaolie;)V
.end method

.method public native aoleinc()Z
.end method

.method public native noaceli(Lcom/alcineo/softpos/cnaolie;)V
.end method

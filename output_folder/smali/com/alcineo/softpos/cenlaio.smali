.class public final Lcom/alcineo/softpos/cenlaio;
.super Lcom/alcineo/softpos/cnaolie;
.source "SourceFile"


# instance fields
.field private final enolcai:B

.field private final icloane:[B

.field private final lneaico:[B

.field private final nacieol:[B

.field private final noelcai:B

.field private final ocenlai:[B

.field private final ocleina:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(BBBLcom/alcineo/softpos/oeicanl;)V
    .locals 5

    invoke-direct {p0}, Lcom/alcineo/softpos/cnaolie;-><init>()V

    iput-byte p1, p0, Lcom/alcineo/softpos/cenlaio;->enolcai:B

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0xb

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte p3, v1, v2

    iput-object v1, p0, Lcom/alcineo/softpos/cenlaio;->ocenlai:[B

    new-array p3, v0, [B

    const/16 v0, 0xe

    aput-byte v0, p3, v3

    aput-byte p2, p3, v2

    iput-object p3, p0, Lcom/alcineo/softpos/cenlaio;->nacieol:[B

    invoke-virtual {p4}, Lcom/alcineo/softpos/oeicanl;->noaceli()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4}, Lcom/alcineo/softpos/oeicanl;->aoleinc()[B

    move-result-object v0

    if-eqz p2, :cond_0

    array-length v4, v0

    add-int/2addr v4, v2

    new-array v4, v4, [B

    invoke-virtual {p2}, Ljava/lang/Integer;->byteValue()B

    move-result p2

    aput-byte p2, v4, v3

    array-length p2, v0

    invoke-static {v0, v3, v4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_0
    iput-object v0, p0, Lcom/alcineo/softpos/cenlaio;->ocleina:[B

    array-length p2, v0

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Shorts;->checkedCast(J)S

    move-result p2

    invoke-static {p2}, Lcom/google/common/primitives/Shorts;->toByteArray(S)[B

    move-result-object p2

    iput-object p2, p0, Lcom/alcineo/softpos/cenlaio;->lneaico:[B

    invoke-virtual {p4}, Lcom/alcineo/softpos/oeicanl;->acileon()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/alcineo/softpos/cenlaio;->noelcai:B

    array-length v3, v0

    add-int/lit8 v3, v3, 0x9

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v3}, Lcom/alcineo/softpos/colanei$acileon;->acileon(Ljava/nio/ByteBuffer;)S

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/Shorts;->toByteArray(S)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/cenlaio;->icloane:[B

    invoke-virtual {p0, p4}, Lcom/alcineo/softpos/cnaolie;->acileon(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method

.method public constructor <init>(B[B[B[B[BB[B)V
    .locals 0

    invoke-direct {p0}, Lcom/alcineo/softpos/cnaolie;-><init>()V

    iput-byte p1, p0, Lcom/alcineo/softpos/cenlaio;->enolcai:B

    iput-object p2, p0, Lcom/alcineo/softpos/cenlaio;->nacieol:[B

    iput-object p3, p0, Lcom/alcineo/softpos/cenlaio;->ocenlai:[B

    iput-byte p6, p0, Lcom/alcineo/softpos/cenlaio;->noelcai:B

    iput-object p7, p0, Lcom/alcineo/softpos/cenlaio;->ocleina:[B

    iput-object p5, p0, Lcom/alcineo/softpos/cenlaio;->icloane:[B

    iput-object p4, p0, Lcom/alcineo/softpos/cenlaio;->lneaico:[B

    invoke-direct {p0, p6, p7}, Lcom/alcineo/softpos/cenlaio;->acileon(B[B)Lcom/alcineo/softpos/oeicanl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/cnaolie;->acileon(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    invoke-direct {p0}, Lcom/alcineo/softpos/cnaolie;-><init>()V

    const/4 v0, 0x1

    aget-byte v1, p1, v0

    iput-byte v1, p0, Lcom/alcineo/softpos/cenlaio;->enolcai:B

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/alcineo/softpos/cenlaio;->nacieol:[B

    const/4 v1, 0x6

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/alcineo/softpos/cenlaio;->ocenlai:[B

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/alcineo/softpos/cenlaio;->noelcai:B

    array-length v2, p1

    add-int/lit8 v2, v2, -0x3

    const/16 v3, 0x9

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/alcineo/softpos/cenlaio;->ocleina:[B

    array-length v4, p1

    add-int/lit8 v4, v4, -0x3

    array-length v5, p1

    sub-int/2addr v5, v0

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alcineo/softpos/cenlaio;->icloane:[B

    const/4 v0, 0x7

    invoke-static {p1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/cenlaio;->lneaico:[B

    invoke-direct {p0, v1, v2}, Lcom/alcineo/softpos/cenlaio;->acileon(B[B)Lcom/alcineo/softpos/oeicanl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/cnaolie;->acileon(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method

.method private native acileon(B[B)Lcom/alcineo/softpos/oeicanl;
.end method

.method private native acileon([B)Ljava/lang/Integer;
.end method

.method private native aoleinc(Lcom/alcineo/softpos/oeicanl;)[B
.end method

.method private native aoleinc([B)[B
.end method


# virtual methods
.method public native enolcai()[B
.end method

.method public native icloane()B
.end method

.method public native lneaico()[B
.end method

.method public native nacieol()B
.end method

.method public native noelcai()[B
.end method

.method public native ocenlai()[B
.end method

.method public native ocleina()[B
.end method

.method public native toString()Ljava/lang/String;
.end method

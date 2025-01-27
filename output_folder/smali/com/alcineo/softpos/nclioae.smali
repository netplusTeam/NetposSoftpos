.class public final enum Lcom/alcineo/softpos/nclioae;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/nclioae;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic icloane:[Lcom/alcineo/softpos/nclioae;

.field public static final enum lneaico:Lcom/alcineo/softpos/nclioae;

.field public static final enum nacieol:Lcom/alcineo/softpos/nclioae;

.field public static final enum noelcai:Lcom/alcineo/softpos/nclioae;

.field public static final enum ocenlai:Lcom/alcineo/softpos/nclioae;

.field public static final enum ocleina:Lcom/alcineo/softpos/nclioae;


# instance fields
.field private acileon:I

.field private aoleinc:B

.field private enolcai:S

.field private noaceli:B


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/alcineo/softpos/nclioae;

    const-string v1, "PCI_KEY_ID_KEY_IMAC_SECRET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alcineo/softpos/nclioae;-><init>(Ljava/lang/String;IBBS)V

    sput-object v6, Lcom/alcineo/softpos/nclioae;->ocenlai:Lcom/alcineo/softpos/nclioae;

    new-instance v0, Lcom/alcineo/softpos/nclioae;

    const-string v8, "PCI_KEY_ID_KEY_IMEK_SECRET"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alcineo/softpos/nclioae;-><init>(Ljava/lang/String;IBBS)V

    sput-object v0, Lcom/alcineo/softpos/nclioae;->nacieol:Lcom/alcineo/softpos/nclioae;

    new-instance v1, Lcom/alcineo/softpos/nclioae;

    const-string v14, "PCI_KEY_ID_KEY_IPEK_SECRET"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0xd

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/alcineo/softpos/nclioae;-><init>(Ljava/lang/String;IBBS)V

    sput-object v1, Lcom/alcineo/softpos/nclioae;->noelcai:Lcom/alcineo/softpos/nclioae;

    new-instance v2, Lcom/alcineo/softpos/nclioae;

    const-string v8, "PCI_KEY_ID_KEY_IAEK_SECRET"

    const/4 v9, 0x3

    const/16 v12, 0xe

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/alcineo/softpos/nclioae;-><init>(Ljava/lang/String;IBBS)V

    sput-object v2, Lcom/alcineo/softpos/nclioae;->lneaico:Lcom/alcineo/softpos/nclioae;

    new-instance v3, Lcom/alcineo/softpos/nclioae;

    const-string v14, "PCI_KEY_ID_KEY_SAEK_SECRET"

    const/4 v15, 0x4

    const/16 v18, 0xf

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/alcineo/softpos/nclioae;-><init>(Ljava/lang/String;IBBS)V

    sput-object v3, Lcom/alcineo/softpos/nclioae;->ocleina:Lcom/alcineo/softpos/nclioae;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/alcineo/softpos/nclioae;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lcom/alcineo/softpos/nclioae;->icloane:[Lcom/alcineo/softpos/nclioae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBBS)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBS)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/alcineo/softpos/nclioae;->acileon:I

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/alcineo/softpos/nclioae;->aoleinc:B

    const/4 p1, 0x0

    iput-byte p1, p0, Lcom/alcineo/softpos/nclioae;->noaceli:B

    iput-short p5, p0, Lcom/alcineo/softpos/nclioae;->enolcai:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/nclioae;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/nclioae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/nclioae;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/nclioae;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/nclioae;->icloane:[Lcom/alcineo/softpos/nclioae;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/nclioae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/nclioae;

    return-object v0
.end method


# virtual methods
.method public acileon()I
    .locals 3

    iget-byte v0, p0, Lcom/alcineo/softpos/nclioae;->aoleinc:B

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-byte v1, p0, Lcom/alcineo/softpos/nclioae;->noaceli:B

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-short v1, p0, Lcom/alcineo/softpos/nclioae;->enolcai:S

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public aoleinc()I
    .locals 1

    iget v0, p0, Lcom/alcineo/softpos/nclioae;->acileon:I

    return v0
.end method

.method public noaceli()[B
    .locals 2

    iget v0, p0, Lcom/alcineo/softpos/nclioae;->acileon:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/alcineo/softpos/nclioae;->aoleinc:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/alcineo/softpos/nclioae;->noaceli:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/alcineo/softpos/nclioae;->enolcai:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

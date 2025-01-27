.class public abstract Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;
.super Ljava/lang/Object;
.source "AbstractFileSystemStructured.java"

# interfaces
.implements Lnet/sf/scuba/smartcards/FileSystemStructured;


# static fields
.field public static final MF_ID:S = 0x3f00s


# instance fields
.field private fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

.field private length:I

.field private p2:I

.field private selectLe:I

.field private selectedFID:S

.field private service:Lnet/sf/scuba/smartcards/CardService;


# direct methods
.method public constructor <init>(Lnet/sf/scuba/smartcards/CardService;)V
    .locals 3
    .param p1, "service"    # Lnet/sf/scuba/smartcards/CardService;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->service:Lnet/sf/scuba/smartcards/CardService;

    .line 41
    const/4 v1, 0x0

    iput-short v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectedFID:S

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->length:I

    .line 43
    iput v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->p2:I

    .line 44
    const/16 v1, 0x100

    iput v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectLe:I

    .line 45
    iput-object v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    .line 48
    iput-object p1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->service:Lnet/sf/scuba/smartcards/CardService;

    .line 49
    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/smartcards/CardService;Z)V
    .locals 3
    .param p1, "service"    # Lnet/sf/scuba/smartcards/CardService;
    .param p2, "fileInfo"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->service:Lnet/sf/scuba/smartcards/CardService;

    .line 41
    const/4 v1, 0x0

    iput-short v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectedFID:S

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->length:I

    .line 43
    iput v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->p2:I

    .line 44
    const/16 v2, 0x100

    iput v2, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectLe:I

    .line 45
    iput-object v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    .line 52
    iput-object p1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->service:Lnet/sf/scuba/smartcards/CardService;

    .line 53
    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    iput v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->p2:I

    .line 54
    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    iput v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectLe:I

    .line 55
    return-void
.end method

.method private createSelectFileAPDU(II[BI)Lnet/sf/scuba/smartcards/CommandAPDU;
    .locals 8
    .param p1, "p1"    # I
    .param p2, "p2"    # I
    .param p3, "data"    # [B
    .param p4, "le"    # I

    .line 128
    if-nez p4, :cond_0

    .line 129
    new-instance v6, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v1, 0x0

    const/16 v2, -0x5c

    move-object v0, v6

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[B)V

    return-object v6

    .line 133
    :cond_0
    new-instance v7, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v1, 0x0

    const/16 v2, -0x5c

    move-object v0, v7

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V

    return-object v7
.end method

.method private selectFile(SI)V
    .locals 3
    .param p1, "fid"    # S
    .param p2, "p1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/4 v0, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 92
    .local v0, "fidbytes":[B
    :goto_0
    invoke-direct {p0, v0, p2}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile([BI)V

    .line 93
    return-void
.end method

.method private selectFile([BI)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "p1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 68
    iget v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->p2:I

    iget v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectLe:I

    invoke-direct {p0, p2, v0, p1, v1}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->createSelectFileAPDU(II[BI)Lnet/sf/scuba/smartcards/CommandAPDU;

    move-result-object v0

    .line 69
    .local v0, "command":Lnet/sf/scuba/smartcards/CommandAPDU;
    iget-object v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v1, v0}, Lnet/sf/scuba/smartcards/CardService;->transmit(Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object v1

    .line 71
    .local v1, "response":Lnet/sf/scuba/smartcards/ResponseAPDU;
    invoke-virtual {v1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getSW()I

    move-result v2

    .line 72
    .local v2, "respSW":I
    invoke-virtual {v1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object v3

    .line 74
    .local v3, "respData":[B
    const/16 v4, -0x7000

    if-ne v2, v4, :cond_2

    .line 81
    new-instance v4, Lnet/sf/scuba/smartcards/ISOFileInfo;

    invoke-direct {v4, v3}, Lnet/sf/scuba/smartcards/ISOFileInfo;-><init>([B)V

    iput-object v4, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    .line 82
    iget-short v4, v4, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 83
    iget-object v4, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    iget-short v4, v4, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    iput-short v4, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectedFID:S

    .line 85
    :cond_0
    iget-object v4, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    iget v4, v4, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    if-eq v4, v5, :cond_1

    .line 86
    iget-object v4, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    iget v4, v4, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    iput v4, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->length:I

    .line 88
    :cond_1
    return-void

    .line 75
    :cond_2
    new-instance v4, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v5, "File could not be selected."

    invoke-direct {v4, v5, v2}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method


# virtual methods
.method public getFileLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 58
    iget v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->length:I

    return v0
.end method

.method public getSelectedFID()S
    .locals 1

    .line 62
    iget-short v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectedFID:S

    return v0
.end method

.method public abstract readBinary(II)[B
.end method

.method public selectAID([B)V
    .locals 1
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile([BI)V

    .line 117
    return-void
.end method

.method public selectDFRelative(S)V
    .locals 1
    .param p1, "fid"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    .line 113
    return-void
.end method

.method public selectEFRelative(S)V
    .locals 1
    .param p1, "fid"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    .line 109
    return-void
.end method

.method public selectFile(S)V
    .locals 1
    .param p1, "fid"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    .line 97
    return-void
.end method

.method public selectMF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    .line 101
    return-void
.end method

.method public selectParent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    .line 105
    return-void
.end method

.method public selectPath([B)V
    .locals 1
    .param p1, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 120
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile([BI)V

    .line 121
    return-void
.end method

.method public selectPathRelative([B)V
    .locals 1
    .param p1, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 124
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile([BI)V

    .line 125
    return-void
.end method

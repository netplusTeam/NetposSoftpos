.class final Ljdbm/recman/DataPage;
.super Ljdbm/recman/PageHeader;
.source "DataPage.java"


# static fields
.field static final DATA_PER_PAGE:S = 0x1fecs

.field static final O_DATA:S = 0x14s

.field private static final O_FIRST:S = 0x12s


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;)V
    .locals 0
    .param p1, "block"    # Ljdbm/recman/BlockIo;

    .line 63
    invoke-direct {p0, p1}, Ljdbm/recman/PageHeader;-><init>(Ljdbm/recman/BlockIo;)V

    .line 64
    return-void
.end method

.method static getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;
    .locals 2
    .param p0, "block"    # Ljdbm/recman/BlockIo;

    .line 71
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->getView()Ljdbm/recman/BlockView;

    move-result-object v0

    .line 72
    .local v0, "view":Ljdbm/recman/BlockView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljdbm/recman/DataPage;

    if-eqz v1, :cond_0

    .line 73
    move-object v1, v0

    check-cast v1, Ljdbm/recman/DataPage;

    return-object v1

    .line 75
    :cond_0
    new-instance v1, Ljdbm/recman/DataPage;

    invoke-direct {v1, p0}, Ljdbm/recman/DataPage;-><init>(Ljdbm/recman/BlockIo;)V

    return-object v1
.end method


# virtual methods
.method getFirst()S
    .locals 2

    .line 80
    iget-object v0, p0, Ljdbm/recman/DataPage;->block:Ljdbm/recman/BlockIo;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    return v0
.end method

.method setFirst(S)V
    .locals 3
    .param p1, "value"    # S

    .line 85
    invoke-virtual {p0}, Ljdbm/recman/DataPage;->paranoiaMagicOk()V

    .line 86
    if-lez p1, :cond_1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DataPage.setFirst: offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " too small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Ljdbm/recman/DataPage;->block:Ljdbm/recman/BlockIo;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Ljdbm/recman/BlockIo;->writeShort(IS)V

    .line 90
    return-void
.end method

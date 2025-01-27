.class public Ljdbm/recman/PageHeader;
.super Ljava/lang/Object;
.source "PageHeader.java"

# interfaces
.implements Ljdbm/recman/BlockView;


# static fields
.field private static final O_MAGIC:S = 0x0s

.field private static final O_NEXT:S = 0x2s

.field private static final O_PREV:S = 0xas

.field protected static final SIZE:S = 0x12s


# instance fields
.field protected block:Ljdbm/recman/BlockIo;


# direct methods
.method protected constructor <init>(Ljdbm/recman/BlockIo;)V
    .locals 4
    .param p1, "block"    # Ljdbm/recman/BlockIo;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-direct {p0, p1}, Ljdbm/recman/PageHeader;->initialize(Ljdbm/recman/BlockIo;)V

    .line 73
    invoke-direct {p0}, Ljdbm/recman/PageHeader;->magicOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "CRITICAL: page header magic for block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not OK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljdbm/recman/PageHeader;->getMagic()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljdbm/recman/BlockIo;S)V
    .locals 0
    .param p1, "block"    # Ljdbm/recman/BlockIo;
    .param p2, "type"    # S

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-direct {p0, p1}, Ljdbm/recman/PageHeader;->initialize(Ljdbm/recman/BlockIo;)V

    .line 85
    invoke-virtual {p0, p2}, Ljdbm/recman/PageHeader;->setType(S)V

    .line 86
    return-void
.end method

.method static getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;
    .locals 2
    .param p0, "block"    # Ljdbm/recman/BlockIo;

    .line 93
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->getView()Ljdbm/recman/BlockView;

    move-result-object v0

    .line 94
    .local v0, "view":Ljdbm/recman/BlockView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljdbm/recman/PageHeader;

    if-eqz v1, :cond_0

    .line 95
    move-object v1, v0

    check-cast v1, Ljdbm/recman/PageHeader;

    return-object v1

    .line 97
    :cond_0
    new-instance v1, Ljdbm/recman/PageHeader;

    invoke-direct {v1, p0}, Ljdbm/recman/PageHeader;-><init>(Ljdbm/recman/BlockIo;)V

    return-object v1
.end method

.method private initialize(Ljdbm/recman/BlockIo;)V
    .locals 0
    .param p1, "block"    # Ljdbm/recman/BlockIo;

    .line 101
    iput-object p1, p0, Ljdbm/recman/PageHeader;->block:Ljdbm/recman/BlockIo;

    .line 102
    invoke-virtual {p1, p0}, Ljdbm/recman/BlockIo;->setView(Ljdbm/recman/BlockView;)V

    .line 103
    return-void
.end method

.method private magicOk()Z
    .locals 2

    .line 109
    invoke-virtual {p0}, Ljdbm/recman/PageHeader;->getMagic()S

    move-result v0

    .line 110
    .local v0, "magic":I
    const/16 v1, 0x1351

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1355

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method getMagic()S
    .locals 2

    .line 125
    iget-object v0, p0, Ljdbm/recman/PageHeader;->block:Ljdbm/recman/BlockIo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    return v0
.end method

.method getNext()J
    .locals 2

    .line 130
    invoke-virtual {p0}, Ljdbm/recman/PageHeader;->paranoiaMagicOk()V

    .line 131
    iget-object v0, p0, Ljdbm/recman/PageHeader;->block:Ljdbm/recman/BlockIo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getPrev()J
    .locals 2

    .line 142
    invoke-virtual {p0}, Ljdbm/recman/PageHeader;->paranoiaMagicOk()V

    .line 143
    iget-object v0, p0, Ljdbm/recman/PageHeader;->block:Ljdbm/recman/BlockIo;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected paranoiaMagicOk()V
    .locals 3

    .line 118
    invoke-direct {p0}, Ljdbm/recman/PageHeader;->magicOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "CRITICAL: page header magic not OK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljdbm/recman/PageHeader;->getMagic()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setNext(J)V
    .locals 2
    .param p1, "next"    # J

    .line 136
    invoke-virtual {p0}, Ljdbm/recman/PageHeader;->paranoiaMagicOk()V

    .line 137
    iget-object v0, p0, Ljdbm/recman/PageHeader;->block:Ljdbm/recman/BlockIo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Ljdbm/recman/BlockIo;->writeLong(IJ)V

    .line 138
    return-void
.end method

.method setPrev(J)V
    .locals 2
    .param p1, "prev"    # J

    .line 148
    invoke-virtual {p0}, Ljdbm/recman/PageHeader;->paranoiaMagicOk()V

    .line 149
    iget-object v0, p0, Ljdbm/recman/PageHeader;->block:Ljdbm/recman/BlockIo;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p2}, Ljdbm/recman/BlockIo;->writeLong(IJ)V

    .line 150
    return-void
.end method

.method setType(S)V
    .locals 3
    .param p1, "type"    # S

    .line 154
    iget-object v0, p0, Ljdbm/recman/PageHeader;->block:Ljdbm/recman/BlockIo;

    add-int/lit16 v1, p1, 0x1351

    int-to-short v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljdbm/recman/BlockIo;->writeShort(IS)V

    .line 155
    return-void
.end method

.class final Ljdbm/recman/PageCursor;
.super Ljava/lang/Object;
.source "PageCursor.java"


# instance fields
.field current:J

.field pageman:Ljdbm/recman/PageManager;

.field type:S


# direct methods
.method constructor <init>(Ljdbm/recman/PageManager;J)V
    .locals 0
    .param p1, "pageman"    # Ljdbm/recman/PageManager;
    .param p2, "current"    # J

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljdbm/recman/PageCursor;->pageman:Ljdbm/recman/PageManager;

    .line 66
    iput-wide p2, p0, Ljdbm/recman/PageCursor;->current:J

    .line 67
    return-void
.end method

.method constructor <init>(Ljdbm/recman/PageManager;S)V
    .locals 0
    .param p1, "pageman"    # Ljdbm/recman/PageManager;
    .param p2, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljdbm/recman/PageCursor;->pageman:Ljdbm/recman/PageManager;

    .line 75
    iput-short p2, p0, Ljdbm/recman/PageCursor;->type:S

    .line 76
    return-void
.end method


# virtual methods
.method getCurrent()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-wide v0, p0, Ljdbm/recman/PageCursor;->current:J

    return-wide v0
.end method

.method next()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-wide v0, p0, Ljdbm/recman/PageCursor;->current:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 90
    iget-object v0, p0, Ljdbm/recman/PageCursor;->pageman:Ljdbm/recman/PageManager;

    iget-short v1, p0, Ljdbm/recman/PageCursor;->type:S

    invoke-virtual {v0, v1}, Ljdbm/recman/PageManager;->getFirst(S)J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/recman/PageCursor;->current:J

    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, p0, Ljdbm/recman/PageCursor;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v2, v0, v1}, Ljdbm/recman/PageManager;->getNext(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/recman/PageCursor;->current:J

    .line 93
    :goto_0
    iget-wide v0, p0, Ljdbm/recman/PageCursor;->current:J

    return-wide v0
.end method

.method prev()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Ljdbm/recman/PageCursor;->pageman:Ljdbm/recman/PageManager;

    iget-wide v1, p0, Ljdbm/recman/PageCursor;->current:J

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/PageManager;->getPrev(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/recman/PageCursor;->current:J

    .line 101
    return-wide v0
.end method

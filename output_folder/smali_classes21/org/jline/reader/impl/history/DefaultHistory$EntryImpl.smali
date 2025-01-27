.class public Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;
.super Ljava/lang/Object;
.source "DefaultHistory.java"

# interfaces
.implements Lorg/jline/reader/History$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/history/DefaultHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntryImpl"
.end annotation


# instance fields
.field private final index:I

.field private final line:Ljava/lang/String;

.field private final time:Ljava/time/Instant;


# direct methods
.method public constructor <init>(ILjava/time/Instant;Ljava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "line"    # Ljava/lang/String;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;->index:I

    .line 460
    iput-object p2, p0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;->time:Ljava/time/Instant;

    .line 461
    iput-object p3, p0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;->line:Ljava/lang/String;

    .line 462
    return-void
.end method


# virtual methods
.method public index()I
    .locals 1

    .line 465
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;->index:I

    return v0
.end method

.method public line()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;->line:Ljava/lang/String;

    return-object v0
.end method

.method public time()Ljava/time/Instant;
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;->time:Ljava/time/Instant;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 478
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;->line:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%d: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

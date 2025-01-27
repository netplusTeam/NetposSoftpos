.class final Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
.super Ljava/lang/Object;
.source "CurrentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/collections/CurrentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CdbCursors"
.end annotation


# instance fields
.field readCursors:Ljava/util/List;

.field writeCursors:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->writeCursors:Ljava/util/List;

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->readCursors:Ljava/util/List;

    return-void
.end method

.class Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;
.super Ljava/util/ArrayList;
.source "VLSNBucket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruncateableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1064
    .local p0, "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;, "Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 1068
    .local p0, "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;, "Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1069
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1072
    .local p0, "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;, "Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1073
    return-void
.end method


# virtual methods
.method truncate(I)V
    .locals 1
    .param p1, "fromIndex"    # I

    .line 1076
    .local p0, "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;, "Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->removeRange(II)V

    .line 1077
    return-void
.end method

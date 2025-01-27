.class Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;
.super Ljava/lang/Object;
.source "BtreeVerifier.java"

# interfaces
.implements Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectFileSizeCache"
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;->cache:Ljava/util/Map;

    .line 930
    return-void
.end method


# virtual methods
.method public getFileSize(J)Lcom/sleepycat/je/utilint/Pair;
    .locals 4
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;->cache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 936
    .local v0, "size":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 937
    new-instance v1, Lcom/sleepycat/je/utilint/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 940
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-static {v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$400(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Lcom/sleepycat/je/log/FileManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 941
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 942
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;->cache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    new-instance v2, Lcom/sleepycat/je/utilint/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.class Lcom/sleepycat/je/util/verify/BtreeVerifier$UPFileSizeCache;
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
    name = "UPFileSizeCache"
.end annotation


# instance fields
.field final fileSizeSummaryMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
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

    .line 963
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$UPFileSizeCache;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    invoke-static {p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$500(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSizeSummaryMap()Ljava/util/SortedMap;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$UPFileSizeCache;->fileSizeSummaryMap:Ljava/util/SortedMap;

    .line 965
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

    .line 970
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$UPFileSizeCache;->fileSizeSummaryMap:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$UPFileSizeCache;->fileSizeSummaryMap:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$UPFileSizeCache;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-static {v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$500(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSize(Ljava/lang/Long;)I

    move-result v0

    .line 975
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$UPFileSizeCache;->fileSizeSummaryMap:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    :cond_1
    new-instance v1, Lcom/sleepycat/je/utilint/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

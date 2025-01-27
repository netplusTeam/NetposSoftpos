.class Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;
.super Ljava/lang/Object;
.source "BtreeVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObsoleteOffsetsCache"
.end annotation


# instance fields
.field final obsoleteOffsetsMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "[J>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;->obsoleteOffsetsMap:Ljava/util/SortedMap;

    .line 1128
    return-void
.end method


# virtual methods
.method fetchOffsets(JLcom/sleepycat/je/Cursor;)[J
    .locals 4
    .param p1, "fileNum"    # J
    .param p3, "cursor"    # Lcom/sleepycat/je/Cursor;

    .line 1144
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    .line 1145
    .local v0, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1146
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-static {v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$500(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getObsoleteDetailSorted(Ljava/lang/Long;)[J

    move-result-object v1

    .line 1147
    .local v1, "offsets":[J
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;->obsoleteOffsetsMap:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 1149
    return-object v1
.end method

.method getCachedOffsets(J)[J
    .locals 2
    .param p1, "fileNum"    # J

    .line 1135
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;->obsoleteOffsetsMap:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

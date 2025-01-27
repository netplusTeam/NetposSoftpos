.class Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;
.super Ljava/lang/Object;
.source "BtreeVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WalkDatabaseTreeResult"
.end annotation


# static fields
.field private static final NO_MORE_RECORDS:Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;


# instance fields
.field lastData:Lcom/sleepycat/je/DatabaseEntry;

.field lastKey:Lcom/sleepycat/je/DatabaseEntry;

.field noMoreRecords:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1246
    new-instance v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;-><init>(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)V

    sput-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->NO_MORE_RECORDS:Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)V
    .locals 0
    .param p1, "lastKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "lastData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "noMoreRecords"    # Z

    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->lastKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 1255
    iput-object p2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->lastData:Lcom/sleepycat/je/DatabaseEntry;

    .line 1256
    iput-boolean p3, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->noMoreRecords:Z

    .line 1257
    return-void
.end method

.method static synthetic access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;
    .locals 1

    .line 1241
    sget-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->NO_MORE_RECORDS:Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    return-object v0
.end method

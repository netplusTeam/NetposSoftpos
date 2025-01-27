.class Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
.super Ljava/lang/Object;
.source "DbCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DbCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DbInfo"
.end annotation


# instance fields
.field dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field deleted:Z

.field deleting:Z

.field dups:Z

.field internal:Z

.field isLNImmediatelyObsolete:Z

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

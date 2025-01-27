.class Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;
.super Ljava/lang/Object;
.source "CleanerFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/CleanerFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryInfo"
.end annotation


# instance fields
.field public targetCategory:B

.field public targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/entry/LogEntry;B)V
    .locals 0
    .param p1, "targetLogEntry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "targetCategory"    # B

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 346
    iput-byte p2, p0, Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;->targetCategory:B

    .line 347
    return-void
.end method

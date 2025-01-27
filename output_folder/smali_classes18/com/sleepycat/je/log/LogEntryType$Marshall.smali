.class final enum Lcom/sleepycat/je/log/LogEntryType$Marshall;
.super Ljava/lang/Enum;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogEntryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Marshall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/LogEntryType$Marshall;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/LogEntryType$Marshall;

.field public static final enum INSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

.field public static final enum OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;


# instance fields
.field private final marshallOutsideLatch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 916
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$Marshall;

    const-string v1, "OUTSIDE_LATCH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/log/LogEntryType$Marshall;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    .line 917
    new-instance v1, Lcom/sleepycat/je/log/LogEntryType$Marshall;

    const-string v4, "INSIDE_LATCH"

    invoke-direct {v1, v4, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$Marshall;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/sleepycat/je/log/LogEntryType$Marshall;->INSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    .line 915
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sleepycat/je/log/LogEntryType$Marshall;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/sleepycat/je/log/LogEntryType$Marshall;->$VALUES:[Lcom/sleepycat/je/log/LogEntryType$Marshall;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "marshallOutsideLatch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 921
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 922
    iput-boolean p3, p0, Lcom/sleepycat/je/log/LogEntryType$Marshall;->marshallOutsideLatch:Z

    .line 923
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/LogEntryType$Marshall;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 915
    const-class v0, Lcom/sleepycat/je/log/LogEntryType$Marshall;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/LogEntryType$Marshall;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/LogEntryType$Marshall;
    .locals 1

    .line 915
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType$Marshall;->$VALUES:[Lcom/sleepycat/je/log/LogEntryType$Marshall;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/LogEntryType$Marshall;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/LogEntryType$Marshall;

    return-object v0
.end method


# virtual methods
.method marshallOutsideLatch()Z
    .locals 1

    .line 926
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryType$Marshall;->marshallOutsideLatch:Z

    return v0
.end method

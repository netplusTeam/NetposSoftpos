.class public final enum Lcom/sleepycat/je/dbi/DbCleanup$Action;
.super Ljava/lang/Enum;
.source "DbCleanup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DbCleanup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/DbCleanup$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/DbCleanup$Action;

.field public static final enum DELETE:Lcom/sleepycat/je/dbi/DbCleanup$Action;

.field public static final enum RENAME:Lcom/sleepycat/je/dbi/DbCleanup$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/sleepycat/je/dbi/DbCleanup$Action;

    const-string v1, "DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/DbCleanup$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbCleanup$Action;->DELETE:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    new-instance v1, Lcom/sleepycat/je/dbi/DbCleanup$Action;

    const-string v3, "RENAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/dbi/DbCleanup$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/dbi/DbCleanup$Action;->RENAME:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/je/dbi/DbCleanup$Action;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/je/dbi/DbCleanup$Action;->$VALUES:[Lcom/sleepycat/je/dbi/DbCleanup$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/DbCleanup$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/sleepycat/je/dbi/DbCleanup$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DbCleanup$Action;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/DbCleanup$Action;
    .locals 1

    .line 28
    sget-object v0, Lcom/sleepycat/je/dbi/DbCleanup$Action;->$VALUES:[Lcom/sleepycat/je/dbi/DbCleanup$Action;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/DbCleanup$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/DbCleanup$Action;

    return-object v0
.end method

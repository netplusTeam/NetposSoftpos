.class final enum Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
.super Ljava/lang/Enum;
.source "FileSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FileStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

.field public static final enum BEING_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

.field public static final enum CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

.field public static final enum TO_BE_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 67
    new-instance v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    const-string v1, "TO_BE_CLEANED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->TO_BE_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 75
    new-instance v1, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    const-string v3, "BEING_CLEANED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->BEING_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 83
    new-instance v3, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    const-string v5, "CLEANED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 56
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->$VALUES:[Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    .locals 1

    .line 56
    sget-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->$VALUES:[Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-virtual {v0}, [Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    return-object v0
.end method

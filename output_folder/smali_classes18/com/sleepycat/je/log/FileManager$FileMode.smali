.class public final enum Lcom/sleepycat/je/log/FileManager$FileMode;
.super Ljava/lang/Enum;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/FileManager$FileMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/FileManager$FileMode;

.field public static final enum READWRITE_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

.field public static final enum READWRITE_ODSYNC_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

.field public static final enum READWRITE_OSYNC_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

.field public static final enum READ_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;


# instance fields
.field private fileModeValue:Ljava/lang/String;

.field private isWritable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 93
    new-instance v0, Lcom/sleepycat/je/log/FileManager$FileMode;

    const-string v1, "READ_MODE"

    const/4 v2, 0x0

    const-string/jumbo v3, "r"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/sleepycat/je/log/FileManager$FileMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/je/log/FileManager$FileMode;->READ_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    .line 94
    new-instance v1, Lcom/sleepycat/je/log/FileManager$FileMode;

    const-string v3, "READWRITE_MODE"

    const/4 v4, 0x1

    const-string/jumbo v5, "rw"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/sleepycat/je/log/FileManager$FileMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/sleepycat/je/log/FileManager$FileMode;->READWRITE_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    .line 95
    new-instance v3, Lcom/sleepycat/je/log/FileManager$FileMode;

    const-string v5, "READWRITE_ODSYNC_MODE"

    const/4 v6, 0x2

    const-string/jumbo v7, "rwd"

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/sleepycat/je/log/FileManager$FileMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lcom/sleepycat/je/log/FileManager$FileMode;->READWRITE_ODSYNC_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    .line 96
    new-instance v5, Lcom/sleepycat/je/log/FileManager$FileMode;

    const-string v7, "READWRITE_OSYNC_MODE"

    const/4 v8, 0x3

    const-string/jumbo v9, "rws"

    invoke-direct {v5, v7, v8, v9, v4}, Lcom/sleepycat/je/log/FileManager$FileMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/sleepycat/je/log/FileManager$FileMode;->READWRITE_OSYNC_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    .line 92
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/log/FileManager$FileMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/log/FileManager$FileMode;->$VALUES:[Lcom/sleepycat/je/log/FileManager$FileMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "fileModeValue"    # Ljava/lang/String;
    .param p4, "isWritable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lcom/sleepycat/je/log/FileManager$FileMode;->fileModeValue:Ljava/lang/String;

    .line 103
    iput-boolean p4, p0, Lcom/sleepycat/je/log/FileManager$FileMode;->isWritable:Z

    .line 104
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/FileManager$FileMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    const-class v0, Lcom/sleepycat/je/log/FileManager$FileMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/FileManager$FileMode;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/FileManager$FileMode;
    .locals 1

    .line 92
    sget-object v0, Lcom/sleepycat/je/log/FileManager$FileMode;->$VALUES:[Lcom/sleepycat/je/log/FileManager$FileMode;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/FileManager$FileMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/FileManager$FileMode;

    return-object v0
.end method


# virtual methods
.method public getModeValue()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileMode;->fileModeValue:Ljava/lang/String;

    return-object v0
.end method

.method public isWritable()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager$FileMode;->isWritable:Z

    return v0
.end method

.class final enum Lcom/sleepycat/je/log/LogEntryType$NodeType;
.super Ljava/lang/Enum;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogEntryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/LogEntryType$NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/LogEntryType$NodeType;

.field public static final enum IN:Lcom/sleepycat/je/log/LogEntryType$NodeType;

.field public static final enum LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

.field public static final enum LN_USER:Lcom/sleepycat/je/log/LogEntryType$NodeType;

.field public static final enum NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

.field public static final enum OLD_DUP:Lcom/sleepycat/je/log/LogEntryType$NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1009
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/log/LogEntryType$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 1012
    new-instance v1, Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/log/LogEntryType$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/log/LogEntryType$NodeType;->IN:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 1015
    new-instance v3, Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v5, "OLD_DUP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/log/LogEntryType$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/log/LogEntryType$NodeType;->OLD_DUP:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 1018
    new-instance v5, Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v7, "LN_INTERNAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/log/LogEntryType$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 1021
    new-instance v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v9, "LN_USER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/log/LogEntryType$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_USER:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 1006
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sleepycat/je/log/LogEntryType$NodeType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sleepycat/je/log/LogEntryType$NodeType;->$VALUES:[Lcom/sleepycat/je/log/LogEntryType$NodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1006
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/LogEntryType$NodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1006
    const-class v0, Lcom/sleepycat/je/log/LogEntryType$NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/LogEntryType$NodeType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/LogEntryType$NodeType;
    .locals 1

    .line 1006
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType$NodeType;->$VALUES:[Lcom/sleepycat/je/log/LogEntryType$NodeType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/LogEntryType$NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/LogEntryType$NodeType;

    return-object v0
.end method

.class final enum Lcom/sleepycat/je/util/Splitter$StateType;
.super Ljava/lang/Enum;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/util/Splitter$StateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/util/Splitter$StateType;

.field public static final enum COLLECT:Lcom/sleepycat/je/util/Splitter$StateType;

.field public static final enum COLLECTANY:Lcom/sleepycat/je/util/Splitter$StateType;

.field public static final enum QUOTE:Lcom/sleepycat/je/util/Splitter$StateType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Lcom/sleepycat/je/util/Splitter$StateType;

    const-string v1, "COLLECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/util/Splitter$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/util/Splitter$StateType;->COLLECT:Lcom/sleepycat/je/util/Splitter$StateType;

    new-instance v1, Lcom/sleepycat/je/util/Splitter$StateType;

    const-string v3, "COLLECTANY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/util/Splitter$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/util/Splitter$StateType;->COLLECTANY:Lcom/sleepycat/je/util/Splitter$StateType;

    new-instance v3, Lcom/sleepycat/je/util/Splitter$StateType;

    const-string v5, "QUOTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/util/Splitter$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/util/Splitter$StateType;->QUOTE:Lcom/sleepycat/je/util/Splitter$StateType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/util/Splitter$StateType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/util/Splitter$StateType;->$VALUES:[Lcom/sleepycat/je/util/Splitter$StateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/util/Splitter$StateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/sleepycat/je/util/Splitter$StateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/util/Splitter$StateType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/util/Splitter$StateType;
    .locals 1

    .line 31
    sget-object v0, Lcom/sleepycat/je/util/Splitter$StateType;->$VALUES:[Lcom/sleepycat/je/util/Splitter$StateType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/util/Splitter$StateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/util/Splitter$StateType;

    return-object v0
.end method

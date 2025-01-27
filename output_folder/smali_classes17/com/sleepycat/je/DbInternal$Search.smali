.class public final enum Lcom/sleepycat/je/DbInternal$Search;
.super Ljava/lang/Enum;
.source "DbInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/DbInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Search"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/DbInternal$Search;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/DbInternal$Search;

.field public static final enum GT:Lcom/sleepycat/je/DbInternal$Search;

.field public static final enum GTE:Lcom/sleepycat/je/DbInternal$Search;

.field public static final enum LT:Lcom/sleepycat/je/DbInternal$Search;

.field public static final enum LTE:Lcom/sleepycat/je/DbInternal$Search;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 285
    new-instance v0, Lcom/sleepycat/je/DbInternal$Search;

    const-string v1, "GT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/DbInternal$Search;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/DbInternal$Search;->GT:Lcom/sleepycat/je/DbInternal$Search;

    .line 291
    new-instance v1, Lcom/sleepycat/je/DbInternal$Search;

    const-string v3, "GTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/DbInternal$Search;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/DbInternal$Search;->GTE:Lcom/sleepycat/je/DbInternal$Search;

    .line 296
    new-instance v3, Lcom/sleepycat/je/DbInternal$Search;

    const-string v5, "LT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/DbInternal$Search;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/DbInternal$Search;->LT:Lcom/sleepycat/je/DbInternal$Search;

    .line 301
    new-instance v5, Lcom/sleepycat/je/DbInternal$Search;

    const-string v7, "LTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/DbInternal$Search;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/DbInternal$Search;->LTE:Lcom/sleepycat/je/DbInternal$Search;

    .line 280
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/DbInternal$Search;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/DbInternal$Search;->$VALUES:[Lcom/sleepycat/je/DbInternal$Search;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/DbInternal$Search;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 280
    const-class v0, Lcom/sleepycat/je/DbInternal$Search;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/DbInternal$Search;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/DbInternal$Search;
    .locals 1

    .line 280
    sget-object v0, Lcom/sleepycat/je/DbInternal$Search;->$VALUES:[Lcom/sleepycat/je/DbInternal$Search;

    invoke-virtual {v0}, [Lcom/sleepycat/je/DbInternal$Search;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/DbInternal$Search;

    return-object v0
.end method

.class public final enum Lcom/sleepycat/je/PreloadConfig$Phases;
.super Ljava/lang/Enum;
.source "PreloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/PreloadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phases"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/PreloadConfig$Phases;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/PreloadConfig$Phases;

.field public static final enum PRELOAD:Lcom/sleepycat/je/PreloadConfig$Phases;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 145
    new-instance v0, Lcom/sleepycat/je/PreloadConfig$Phases;

    const-string v1, "PRELOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/PreloadConfig$Phases;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/PreloadConfig$Phases;->PRELOAD:Lcom/sleepycat/je/PreloadConfig$Phases;

    .line 141
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sleepycat/je/PreloadConfig$Phases;

    aput-object v0, v1, v2

    sput-object v1, Lcom/sleepycat/je/PreloadConfig$Phases;->$VALUES:[Lcom/sleepycat/je/PreloadConfig$Phases;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/PreloadConfig$Phases;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 141
    const-class v0, Lcom/sleepycat/je/PreloadConfig$Phases;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/PreloadConfig$Phases;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/PreloadConfig$Phases;
    .locals 1

    .line 141
    sget-object v0, Lcom/sleepycat/je/PreloadConfig$Phases;->$VALUES:[Lcom/sleepycat/je/PreloadConfig$Phases;

    invoke-virtual {v0}, [Lcom/sleepycat/je/PreloadConfig$Phases;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/PreloadConfig$Phases;

    return-object v0
.end method

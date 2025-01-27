.class public final enum Lorg/jline/terminal/Terminal$MouseTracking;
.super Ljava/lang/Enum;
.source "Terminal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/Terminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MouseTracking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/Terminal$MouseTracking;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/Terminal$MouseTracking;

.field public static final enum Any:Lorg/jline/terminal/Terminal$MouseTracking;

.field public static final enum Button:Lorg/jline/terminal/Terminal$MouseTracking;

.field public static final enum Normal:Lorg/jline/terminal/Terminal$MouseTracking;

.field public static final enum Off:Lorg/jline/terminal/Terminal$MouseTracking;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 262
    new-instance v0, Lorg/jline/terminal/Terminal$MouseTracking;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Terminal$MouseTracking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    .line 266
    new-instance v1, Lorg/jline/terminal/Terminal$MouseTracking;

    const-string v3, "Normal"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/Terminal$MouseTracking;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/Terminal$MouseTracking;->Normal:Lorg/jline/terminal/Terminal$MouseTracking;

    .line 271
    new-instance v3, Lorg/jline/terminal/Terminal$MouseTracking;

    const-string v5, "Button"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/Terminal$MouseTracking;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/Terminal$MouseTracking;->Button:Lorg/jline/terminal/Terminal$MouseTracking;

    .line 275
    new-instance v5, Lorg/jline/terminal/Terminal$MouseTracking;

    const-string v7, "Any"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/Terminal$MouseTracking;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/Terminal$MouseTracking;->Any:Lorg/jline/terminal/Terminal$MouseTracking;

    .line 258
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jline/terminal/Terminal$MouseTracking;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jline/terminal/Terminal$MouseTracking;->$VALUES:[Lorg/jline/terminal/Terminal$MouseTracking;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/Terminal$MouseTracking;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 258
    const-class v0, Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Terminal$MouseTracking;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/Terminal$MouseTracking;
    .locals 1

    .line 258
    sget-object v0, Lorg/jline/terminal/Terminal$MouseTracking;->$VALUES:[Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-virtual {v0}, [Lorg/jline/terminal/Terminal$MouseTracking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/Terminal$MouseTracking;

    return-object v0
.end method

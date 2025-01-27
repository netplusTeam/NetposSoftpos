.class public final enum Lorg/jline/terminal/MouseEvent$Type;
.super Ljava/lang/Enum;
.source "MouseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/MouseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/MouseEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/MouseEvent$Type;

.field public static final enum Dragged:Lorg/jline/terminal/MouseEvent$Type;

.field public static final enum Moved:Lorg/jline/terminal/MouseEvent$Type;

.field public static final enum Pressed:Lorg/jline/terminal/MouseEvent$Type;

.field public static final enum Released:Lorg/jline/terminal/MouseEvent$Type;

.field public static final enum Wheel:Lorg/jline/terminal/MouseEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    new-instance v0, Lorg/jline/terminal/MouseEvent$Type;

    const-string v1, "Released"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/MouseEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/MouseEvent$Type;->Released:Lorg/jline/terminal/MouseEvent$Type;

    .line 17
    new-instance v1, Lorg/jline/terminal/MouseEvent$Type;

    const-string v3, "Pressed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/MouseEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/MouseEvent$Type;->Pressed:Lorg/jline/terminal/MouseEvent$Type;

    .line 18
    new-instance v3, Lorg/jline/terminal/MouseEvent$Type;

    const-string v5, "Wheel"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/MouseEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/MouseEvent$Type;->Wheel:Lorg/jline/terminal/MouseEvent$Type;

    .line 19
    new-instance v5, Lorg/jline/terminal/MouseEvent$Type;

    const-string v7, "Moved"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/MouseEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/MouseEvent$Type;->Moved:Lorg/jline/terminal/MouseEvent$Type;

    .line 20
    new-instance v7, Lorg/jline/terminal/MouseEvent$Type;

    const-string v9, "Dragged"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/terminal/MouseEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/terminal/MouseEvent$Type;->Dragged:Lorg/jline/terminal/MouseEvent$Type;

    .line 15
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/jline/terminal/MouseEvent$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/jline/terminal/MouseEvent$Type;->$VALUES:[Lorg/jline/terminal/MouseEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/MouseEvent$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lorg/jline/terminal/MouseEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/MouseEvent$Type;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/MouseEvent$Type;
    .locals 1

    .line 15
    sget-object v0, Lorg/jline/terminal/MouseEvent$Type;->$VALUES:[Lorg/jline/terminal/MouseEvent$Type;

    invoke-virtual {v0}, [Lorg/jline/terminal/MouseEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/MouseEvent$Type;

    return-object v0
.end method

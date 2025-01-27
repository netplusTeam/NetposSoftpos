.class public final enum Lorg/jline/terminal/MouseEvent$Button;
.super Ljava/lang/Enum;
.source "MouseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/MouseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/MouseEvent$Button;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/MouseEvent$Button;

.field public static final enum Button1:Lorg/jline/terminal/MouseEvent$Button;

.field public static final enum Button2:Lorg/jline/terminal/MouseEvent$Button;

.field public static final enum Button3:Lorg/jline/terminal/MouseEvent$Button;

.field public static final enum NoButton:Lorg/jline/terminal/MouseEvent$Button;

.field public static final enum WheelDown:Lorg/jline/terminal/MouseEvent$Button;

.field public static final enum WheelUp:Lorg/jline/terminal/MouseEvent$Button;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 24
    new-instance v0, Lorg/jline/terminal/MouseEvent$Button;

    const-string v1, "NoButton"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/MouseEvent$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/MouseEvent$Button;->NoButton:Lorg/jline/terminal/MouseEvent$Button;

    .line 25
    new-instance v1, Lorg/jline/terminal/MouseEvent$Button;

    const-string v3, "Button1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/MouseEvent$Button;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/MouseEvent$Button;->Button1:Lorg/jline/terminal/MouseEvent$Button;

    .line 26
    new-instance v3, Lorg/jline/terminal/MouseEvent$Button;

    const-string v5, "Button2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/MouseEvent$Button;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/MouseEvent$Button;->Button2:Lorg/jline/terminal/MouseEvent$Button;

    .line 27
    new-instance v5, Lorg/jline/terminal/MouseEvent$Button;

    const-string v7, "Button3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/MouseEvent$Button;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/MouseEvent$Button;->Button3:Lorg/jline/terminal/MouseEvent$Button;

    .line 28
    new-instance v7, Lorg/jline/terminal/MouseEvent$Button;

    const-string v9, "WheelUp"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/terminal/MouseEvent$Button;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/terminal/MouseEvent$Button;->WheelUp:Lorg/jline/terminal/MouseEvent$Button;

    .line 29
    new-instance v9, Lorg/jline/terminal/MouseEvent$Button;

    const-string v11, "WheelDown"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/terminal/MouseEvent$Button;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/terminal/MouseEvent$Button;->WheelDown:Lorg/jline/terminal/MouseEvent$Button;

    .line 23
    const/4 v11, 0x6

    new-array v11, v11, [Lorg/jline/terminal/MouseEvent$Button;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/jline/terminal/MouseEvent$Button;->$VALUES:[Lorg/jline/terminal/MouseEvent$Button;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/MouseEvent$Button;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lorg/jline/terminal/MouseEvent$Button;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/MouseEvent$Button;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/MouseEvent$Button;
    .locals 1

    .line 23
    sget-object v0, Lorg/jline/terminal/MouseEvent$Button;->$VALUES:[Lorg/jline/terminal/MouseEvent$Button;

    invoke-virtual {v0}, [Lorg/jline/terminal/MouseEvent$Button;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/MouseEvent$Button;

    return-object v0
.end method

.class final enum Lorg/jline/builtins/Tmux$Layout$Type;
.super Ljava/lang/Enum;
.source "Tmux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Tmux$Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/Tmux$Layout$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/Tmux$Layout$Type;

.field public static final enum LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

.field public static final enum TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

.field public static final enum WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1310
    new-instance v0, Lorg/jline/builtins/Tmux$Layout$Type;

    const-string v1, "LeftRight"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Tmux$Layout$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    new-instance v1, Lorg/jline/builtins/Tmux$Layout$Type;

    const-string v3, "TopBottom"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Tmux$Layout$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    new-instance v3, Lorg/jline/builtins/Tmux$Layout$Type;

    const-string v5, "WindowPane"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/Tmux$Layout$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/Tmux$Layout$Type;->WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/builtins/Tmux$Layout$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/builtins/Tmux$Layout$Type;->$VALUES:[Lorg/jline/builtins/Tmux$Layout$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1310
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1310
    const-class v0, Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Tmux$Layout$Type;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/Tmux$Layout$Type;
    .locals 1

    .line 1310
    sget-object v0, Lorg/jline/builtins/Tmux$Layout$Type;->$VALUES:[Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-virtual {v0}, [Lorg/jline/builtins/Tmux$Layout$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/Tmux$Layout$Type;

    return-object v0
.end method

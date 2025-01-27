.class synthetic Lorg/jline/terminal/impl/AbstractTerminal$1;
.super Ljava/lang/Object;
.source "AbstractTerminal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/AbstractTerminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jline$terminal$Terminal$Signal:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    invoke-static {}, Lorg/jline/terminal/Terminal$Signal;->values()[Lorg/jline/terminal/Terminal$Signal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jline/terminal/impl/AbstractTerminal$1;->$SwitchMap$org$jline$terminal$Terminal$Signal:[I

    :try_start_0
    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v1}, Lorg/jline/terminal/Terminal$Signal;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/jline/terminal/impl/AbstractTerminal$1;->$SwitchMap$org$jline$terminal$Terminal$Signal:[I

    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->QUIT:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v1}, Lorg/jline/terminal/Terminal$Signal;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/jline/terminal/impl/AbstractTerminal$1;->$SwitchMap$org$jline$terminal$Terminal$Signal:[I

    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v1}, Lorg/jline/terminal/Terminal$Signal;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method

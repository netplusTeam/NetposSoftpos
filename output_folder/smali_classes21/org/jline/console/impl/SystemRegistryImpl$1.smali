.class synthetic Lorg/jline/console/impl/SystemRegistryImpl$1;
.super Ljava/lang/Object;
.source "SystemRegistryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/SystemRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jline$console$CmdLine$DescriptionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 356
    invoke-static {}, Lorg/jline/console/CmdLine$DescriptionType;->values()[Lorg/jline/console/CmdLine$DescriptionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jline/console/impl/SystemRegistryImpl$1;->$SwitchMap$org$jline$console$CmdLine$DescriptionType:[I

    :try_start_0
    sget-object v1, Lorg/jline/console/CmdLine$DescriptionType;->COMMAND:Lorg/jline/console/CmdLine$DescriptionType;

    invoke-virtual {v1}, Lorg/jline/console/CmdLine$DescriptionType;->ordinal()I

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
    sget-object v0, Lorg/jline/console/impl/SystemRegistryImpl$1;->$SwitchMap$org$jline$console$CmdLine$DescriptionType:[I

    sget-object v1, Lorg/jline/console/CmdLine$DescriptionType;->METHOD:Lorg/jline/console/CmdLine$DescriptionType;

    invoke-virtual {v1}, Lorg/jline/console/CmdLine$DescriptionType;->ordinal()I

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
    sget-object v0, Lorg/jline/console/impl/SystemRegistryImpl$1;->$SwitchMap$org$jline$console$CmdLine$DescriptionType:[I

    sget-object v1, Lorg/jline/console/CmdLine$DescriptionType;->SYNTAX:Lorg/jline/console/CmdLine$DescriptionType;

    invoke-virtual {v1}, Lorg/jline/console/CmdLine$DescriptionType;->ordinal()I

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

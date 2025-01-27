.class public abstract Lcom/alcineo/softpos/alicneo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static SCMD_FAILURE:I = 0xff

.field public static SCMD_SUCCESS:I


# instance fields
.field private final a:Lcom/alcineo/softpos/oeicanl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alcineo/softpos/oeicanl;

    invoke-direct {v0, p1, p2, p3}, Lcom/alcineo/softpos/oeicanl;-><init>(ILjava/lang/Integer;[B)V

    iput-object v0, p0, Lcom/alcineo/softpos/alicneo;->a:Lcom/alcineo/softpos/oeicanl;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/alicneo;->a:Lcom/alcineo/softpos/oeicanl;

    return-void
.end method

.method public static native checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V
.end method


# virtual methods
.method public final native a([B)V
.end method

.method public final native getCommandData()Lcom/alcineo/softpos/oeicanl;
.end method

.method public abstract getCommandName()Ljava/lang/String;
.end method

.method public final native getCommandValue()I
.end method

.method public final native getData()[B
.end method

.method public final native getDataHex()Ljava/lang/String;
.end method

.method public final native getDataHex(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native getDataString()Ljava/lang/String;
.end method

.method public native getSubCommandName()Ljava/lang/String;
.end method

.method public final native getSubCommandValue()Ljava/lang/Integer;
.end method

.method public native toString()Ljava/lang/String;
.end method

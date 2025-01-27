.class public Lcom/alcineo/softpos/locniae;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0xf4

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;

.field public static final enolcai:I = 0x91

.field public static final lneaico:I = 0x96

.field public static final nacieol:I = 0x93

.field public static final noaceli:I = 0x90

.field public static final noelcai:I = 0x95

.field public static final ocenlai:I = 0x92

.field public static final ocleina:I = 0x97


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/locniae$acileon;

    invoke-direct {v0}, Lcom/alcineo/softpos/locniae$acileon;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/locniae;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xf4

    invoke-direct {p0, v0, p1, p2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alcineo/softpos/oeicanl;Lcom/alcineo/softpos/locniae$acileon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/locniae;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method

.method public static native acileon()Lcom/alcineo/softpos/locniae;
.end method

.method public static native acileon([B)Lcom/alcineo/softpos/locniae;
.end method

.method public static native aoleinc()Lcom/alcineo/softpos/locniae;
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method

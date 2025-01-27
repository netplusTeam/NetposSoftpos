.class public Lcom/alcineo/softpos/oclniea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aoleinc:Ljava/lang/String; = "oclniea"


# instance fields
.field private final acileon:Lcom/alcineo/softpos/aleonci;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aleonci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/oclniea;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/oclniea;->acileon(Lcom/alcineo/softpos/aleonci;)V

    return-void
.end method

.method private native acileon(Lcom/alcineo/softpos/aleonci;)V
.end method


# virtual methods
.method public native acileon()[B
.end method

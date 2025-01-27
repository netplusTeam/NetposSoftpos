.class Lorg/jline/builtins/NfaMatcher$State;
.super Ljava/lang/Object;
.source "NfaMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/NfaMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# static fields
.field static final Match:Ljava/lang/String; = "++MATCH++"

.field static final Split:Ljava/lang/String; = "++SPLIT++"


# instance fields
.field final c:Ljava/lang/String;

.field out:Lorg/jline/builtins/NfaMatcher$State;

.field out1:Lorg/jline/builtins/NfaMatcher$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jline/builtins/NfaMatcher$State;Lorg/jline/builtins/NfaMatcher$State;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/jline/builtins/NfaMatcher$State;
    .param p3, "out1"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lorg/jline/builtins/NfaMatcher$State;->out:Lorg/jline/builtins/NfaMatcher$State;

    .line 244
    iput-object p3, p0, Lorg/jline/builtins/NfaMatcher$State;->out1:Lorg/jline/builtins/NfaMatcher$State;

    .line 245
    return-void
.end method


# virtual methods
.method public setOut(Lorg/jline/builtins/NfaMatcher$State;)V
    .locals 0
    .param p1, "out"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 247
    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$State;->out:Lorg/jline/builtins/NfaMatcher$State;

    .line 248
    return-void
.end method

.method public setOut1(Lorg/jline/builtins/NfaMatcher$State;)V
    .locals 0
    .param p1, "out1"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 250
    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$State;->out1:Lorg/jline/builtins/NfaMatcher$State;

    .line 251
    return-void
.end method

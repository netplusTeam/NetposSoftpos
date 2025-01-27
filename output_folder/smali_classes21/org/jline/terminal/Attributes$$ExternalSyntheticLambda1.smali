.class public final synthetic Lorg/jline/terminal/Attributes$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/terminal/Attributes;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/terminal/Attributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/terminal/Attributes$$ExternalSyntheticLambda1;->f$0:Lorg/jline/terminal/Attributes;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/terminal/Attributes$$ExternalSyntheticLambda1;->f$0:Lorg/jline/terminal/Attributes;

    check-cast p1, Lorg/jline/terminal/Attributes$ControlChar;

    invoke-static {v0, p1}, Lorg/jline/terminal/Attributes;->$r8$lambda$4L2O1OlzOWnxOX6DFeoA2Gd48Ns(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$ControlChar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

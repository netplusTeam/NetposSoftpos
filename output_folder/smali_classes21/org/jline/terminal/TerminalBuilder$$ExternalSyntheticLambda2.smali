.class public final synthetic Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/terminal/Terminal;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/terminal/Terminal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda2;->f$0:Lorg/jline/terminal/Terminal;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda2;->f$0:Lorg/jline/terminal/Terminal;

    invoke-static {v0}, Lorg/jline/terminal/TerminalBuilder;->lambda$build$2(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;

    invoke-virtual {v0}, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->destroy()V

    return-void
.end method

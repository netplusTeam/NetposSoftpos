.class Lbsh/XThis$Handler;
.super Ljava/lang/Object;
.source "XThis.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/XThis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lbsh/XThis;


# direct methods
.method constructor <init>(Lbsh/XThis;)V
    .locals 0
    .param p1, "this$0"    # Lbsh/XThis;

    .line 119
    iput-object p1, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lbsh/XThis$Handler;->invokeImpl(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ee":Lbsh/EvalError;
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EvalError in scripted interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    .line 140
    invoke-virtual {v2}, Lbsh/XThis;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 141
    :cond_0
    throw v0

    .line 130
    .end local v0    # "ee":Lbsh/EvalError;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "te":Lbsh/TargetError;
    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public invokeImpl(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 148
    const-string/jumbo v0, "toString"

    const-string v1, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Lbsh/CallStack;

    iget-object v4, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    iget-object v4, v4, Lbsh/XThis;->namespace:Lbsh/NameSpace;

    invoke-direct {v3, v4}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    .line 159
    .local v3, "callstack":Lbsh/CallStack;
    const/4 v4, 0x0

    .line 161
    .local v4, "equalsMethod":Lbsh/BshMethod;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v7, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    iget-object v7, v7, Lbsh/XThis;->namespace:Lbsh/NameSpace;

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v5

    invoke-virtual {v7, v1, v8}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v7
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    goto :goto_0

    .line 163
    :catch_0
    move-exception v7

    :goto_0
    nop

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    .line 165
    aget-object v0, p3, v5

    .line 166
    .local v0, "obj":Ljava/lang/Object;
    if-ne p1, v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v1

    .line 173
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    .line 175
    .local v1, "toStringMethod":Lbsh/BshMethod;
    :try_start_1
    iget-object v7, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    iget-object v7, v7, Lbsh/XThis;->namespace:Lbsh/NameSpace;

    new-array v5, v5, [Ljava/lang/Class;

    .line 176
    invoke-virtual {v7, v0, v5}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v5
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    goto :goto_2

    .line 177
    :catch_1
    move-exception v5

    :goto_2
    nop

    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 183
    .local v0, "ints":[Ljava/lang/Class;
    new-instance v5, Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    .line 184
    invoke-virtual {v8}, Lbsh/XThis;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nimplements:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 185
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v8, v0

    if-ge v7, v8, :cond_3

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v7

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    if-le v9, v6, :cond_2

    const-string v9, ","

    goto :goto_4

    :cond_2
    const-string v9, ""

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 188
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 191
    .end local v0    # "ints":[Ljava/lang/Class;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 192
    .local v0, "paramTypes":[Ljava/lang/Class;
    iget-object v5, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    .line 193
    invoke-static {p3, v0}, Lbsh/Primitive;->wrap([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lbsh/XThis;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 192
    invoke-static {v5}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

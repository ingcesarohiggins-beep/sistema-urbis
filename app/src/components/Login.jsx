import React, { useState } from 'react';
import { supabase } from '../supabaseClient';

export default function Login({ onLogin }) {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError('');
    setLoading(true);

    const { error: authError } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    setLoading(false);

    if (authError) {
      setError(authError.message === 'Invalid login credentials'
        ? 'Credenciales inválidas. Verifica tu correo y contraseña.'
        : authError.message
      );
    } else {
      onLogin?.();
    }
  };

  return (
    <div style={styles.wrapper}>
      {/* Animated background orbs */}
      <div style={styles.orbTopRight} />
      <div style={styles.orbBottomLeft} />

      <form onSubmit={handleSubmit} style={styles.card}>
        {/* Logo / Brand */}
        <div style={styles.brandSection}>
          <div style={styles.logoIcon}>🏗️</div>
          <h1 style={styles.brandName}>URBIS CONTROL</h1>
          <span style={styles.brandSub}>SISTEMA INMOBILIARIO</span>
        </div>

        {/* Error message */}
        {error && (
          <div style={styles.errorBox}>
            <span style={{ fontSize: '1rem' }}>⚠️</span>
            <span>{error}</span>
          </div>
        )}

        {/* Email */}
        <div className="form-group">
          <label htmlFor="login-email" style={styles.label}>Correo Electrónico</label>
          <input
            id="login-email"
            type="email"
            placeholder="tu@correo.com"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
            autoComplete="email"
            style={styles.input}
          />
        </div>

        {/* Password */}
        <div className="form-group">
          <label htmlFor="login-password" style={styles.label}>Contraseña</label>
          <input
            id="login-password"
            type="password"
            placeholder="••••••••"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
            autoComplete="current-password"
            style={styles.input}
          />
        </div>

        {/* Submit */}
        <button
          type="submit"
          className="btn-primary"
          disabled={loading}
          style={{
            ...styles.submitBtn,
            opacity: loading ? 0.7 : 1,
            cursor: loading ? 'not-allowed' : 'pointer',
          }}
        >
          {loading ? (
            <>
              <span style={styles.spinner} />
              Ingresando...
            </>
          ) : (
            'Iniciar Sesión'
          )}
        </button>

        <p style={styles.footerText}>
          Acceso exclusivo para usuarios autorizados.
        </p>
      </form>
    </div>
  );
}

/* ===== Inline Styles ===== */
const styles = {
  wrapper: {
    minHeight: '100vh',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    background: 'var(--bg-main)',
    position: 'relative',
    overflow: 'hidden',
  },

  /* Decorative gradient orbs */
  orbTopRight: {
    position: 'absolute',
    top: '-20%',
    right: '-10%',
    width: '600px',
    height: '600px',
    borderRadius: '50%',
    background: 'radial-gradient(circle, hsla(160, 84%, 39%, 0.12) 0%, transparent 70%)',
    filter: 'blur(60px)',
    pointerEvents: 'none',
  },
  orbBottomLeft: {
    position: 'absolute',
    bottom: '-15%',
    left: '-10%',
    width: '500px',
    height: '500px',
    borderRadius: '50%',
    background: 'radial-gradient(circle, hsla(210, 80%, 50%, 0.08) 0%, transparent 70%)',
    filter: 'blur(60px)',
    pointerEvents: 'none',
  },

  /* Glass card */
  card: {
    position: 'relative',
    zIndex: 1,
    width: '100%',
    maxWidth: '420px',
    padding: '48px 40px 36px',
    background: 'hsla(222, 25%, 12%, 0.65)',
    backdropFilter: 'blur(20px)',
    WebkitBackdropFilter: 'blur(20px)',
    border: '1px solid hsla(217, 30%, 20%, 0.5)',
    borderRadius: '20px',
    boxShadow: '0 24px 80px rgba(0,0,0,0.5), 0 0 60px hsla(160, 84%, 39%, 0.06)',
    display: 'flex',
    flexDirection: 'column',
    gap: '4px',
  },

  brandSection: {
    textAlign: 'center',
    marginBottom: '20px',
  },
  logoIcon: {
    fontSize: '2.8rem',
    marginBottom: '8px',
    filter: 'drop-shadow(0 0 8px hsla(160, 84%, 39%, 0.3))',
  },
  brandName: {
    fontFamily: 'Outfit, sans-serif',
    fontWeight: 800,
    fontSize: '1.65rem',
    color: 'var(--primary)',
    letterSpacing: '-0.03em',
    margin: 0,
  },
  brandSub: {
    fontSize: '0.65rem',
    color: 'var(--text-muted)',
    textTransform: 'uppercase',
    letterSpacing: '0.15em',
    display: 'block',
    marginTop: '4px',
  },

  label: {
    fontSize: '0.8rem',
    fontWeight: 500,
    color: 'var(--text-muted)',
  },
  input: {
    width: '100%',
    boxSizing: 'border-box',
  },

  submitBtn: {
    width: '100%',
    padding: '14px',
    fontSize: '0.95rem',
    marginTop: '8px',
    borderRadius: '10px',
  },

  errorBox: {
    display: 'flex',
    alignItems: 'center',
    gap: '10px',
    padding: '12px 16px',
    borderRadius: '10px',
    background: 'hsla(350, 85%, 55%, 0.12)',
    border: '1px solid hsla(350, 85%, 55%, 0.35)',
    color: 'hsl(350, 85%, 75%)',
    fontSize: '0.85rem',
    marginBottom: '8px',
  },

  footerText: {
    textAlign: 'center',
    fontSize: '0.72rem',
    color: 'var(--text-muted)',
    marginTop: '16px',
    marginBottom: 0,
    opacity: 0.7,
  },

  spinner: {
    display: 'inline-block',
    width: '16px',
    height: '16px',
    border: '2px solid hsla(222, 28%, 7%, 0.3)',
    borderTopColor: 'hsl(222, 28%, 7%)',
    borderRadius: '50%',
    animation: 'spin 0.6s linear infinite',
  },
};

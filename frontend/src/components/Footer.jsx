import { useLanguage } from '../context/LanguageContext';

const Footer = () => {
    const { t } = useLanguage();

    return (
        <div className="footer">
            <footer className="footer-div" style={{ position: 'relative' }}>
                <div className="footer--text-section" style={{ borderBottom: '1px solid white' }}>
                    <div className="footer--lettafaktura-text">123 Fakturera </div>
                    <div className="footer-menu">
                        <a href="#"><span><p>{t('menu.home')}</p></span></a>
                        <a href="#"><span><p>{t('menu.order')}</p></span></a>
                        <a href="#"><span><p>{t('menu.contact')}</p></span></a>
                    </div>
                </div>
                <div className="footer-copyright">
                    <p className="copyright-text">© Lättfaktura, CRO no. 638537, 2025. All rights reserved. </p>
                </div>
            </footer>
        </div>
    );
};

export default Footer;
